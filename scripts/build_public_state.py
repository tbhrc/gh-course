#!/usr/bin/env python3
"""Build the public CMS state from canonical repository sources.

Generated output is an artifact. Agents should edit the canonical Markdown sources,
not site/public-state.json.
"""

from __future__ import annotations

import json
import os
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def read(path: str) -> str:
    return (ROOT / path).read_text(encoding="utf-8")


def clean_inline(value: str) -> str:
    value = value.strip()
    value = re.sub(r"\[([^\]]+)\]\([^\)]+\)", r"\1", value)
    value = value.replace("**", "").replace("`", "")
    value = re.sub(r"\s+", " ", value)
    return value.strip()


def field(markdown: str, label: str) -> str:
    pattern = rf"^\*\*{re.escape(label)}:\*\*\s*(.+?)\s*$"
    match = re.search(pattern, markdown, flags=re.MULTILINE)
    return clean_inline(match.group(1)) if match else "Not recorded"


def first_paragraph(markdown: str) -> str:
    lines = markdown.splitlines()
    paragraph: list[str] = []
    started = False
    for raw in lines[1:]:
        line = raw.strip()
        if not line:
            if started:
                break
            continue
        if line.startswith(("#", ">", "|", "```", "---")):
            if started:
                break
            continue
        started = True
        paragraph.append(line)
    return clean_inline(" ".join(paragraph))


def section_table(markdown: str, heading_fragment: str) -> list[dict[str, str]]:
    lines = markdown.splitlines()
    start = None
    for idx, line in enumerate(lines):
        if line.startswith("#") and heading_fragment.lower() in line.lower():
            start = idx + 1
            break
    if start is None:
        return []

    table_lines: list[str] = []
    in_table = False
    for line in lines[start:]:
        stripped = line.strip()
        if stripped.startswith("#") and not in_table:
            break
        if stripped.startswith("|") and stripped.endswith("|"):
            in_table = True
            table_lines.append(stripped)
        elif in_table:
            break

    if len(table_lines) < 2:
        return []

    def cells(line: str) -> list[str]:
        return [clean_inline(cell) for cell in line.strip("|").split("|")]

    headers = cells(table_lines[0])
    data_lines = table_lines[2:] if len(table_lines) > 2 else []
    rows: list[dict[str, str]] = []
    for line in data_lines:
        values = cells(line)
        if len(values) != len(headers):
            continue
        rows.append(dict(zip(headers, values)))
    return rows


def benchmark_verified(markdown: str) -> str:
    match = re.search(r"^\*\*Last verified:\*\*\s*(.+?)\s*$", markdown, flags=re.MULTILINE)
    return clean_inline(match.group(1)) if match else "Not recorded"


def main() -> None:
    progress = read("students/david/progress.md")
    benchmark = read("knowledge-base/executor-benchmark-framework.md")
    home = read("wiki/Home.md")
    version = read("VERSION").strip()

    state = {
        "schema_version": 1,
        "generated_from_commit": os.environ.get("GITHUB_SHA", "local-build"),
        "source_contract": {
            "course_home": "wiki/Home.md",
            "student_state": "students/david/progress.md",
            "executor_benchmark": "knowledge-base/executor-benchmark-framework.md",
            "version": "VERSION",
        },
        "course": {
            "version": version,
            "home_intro": first_paragraph(home),
        },
        "student": {
            "course_stage": field(progress, "Course stage"),
            "current_focus": field(progress, "Current learning focus"),
            "next_objective": field(progress, "Next hands-on objective"),
        },
        "benchmark": {
            "last_verified": benchmark_verified(benchmark),
            "review_ready_scoreboard": section_table(benchmark, "Initial scored leaderboard"),
            "full_lifecycle": section_table(benchmark, "Full-lifecycle results"),
            "timing_components": section_table(benchmark, "Dispatch/agent timing audit"),
            "canonical_url": "https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md",
        },
    }

    output = ROOT / "site" / "public-state.json"
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(state, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(f"Generated {output.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
