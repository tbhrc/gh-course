const STATE_URL = "https://raw.githubusercontent.com/tbhrc/github-course/main/site/public-state.json";

function setText(id, value) {
  const node = document.getElementById(id);
  if (node && value) node.textContent = value;
}

function cell(value) {
  const td = document.createElement("td");
  td.textContent = value ?? "—";
  return td;
}

function renderScoreboard(rows) {
  const body = document.getElementById("benchmark-body");
  if (!body) return;

  const speedHeader = document.querySelector("#benchmark thead th:nth-child(2)");
  if (speedHeader) speedHeader.textContent = "Operator wall-clock /30";

  body.replaceChildren();
  for (const row of (rows || []).slice(0, 8)) {
    const tr = document.createElement("tr");
    tr.appendChild(cell(row.Executor));
    tr.appendChild(cell(row["Operator wall-clock /30"] ?? row["Speed /30"]));
    tr.appendChild(cell(row["Total /100"]));
    body.appendChild(tr);
  }
  if (!body.children.length) {
    const tr = document.createElement("tr");
    const td = cell("No scored rows are currently available. Open the canonical benchmark.");
    td.colSpan = 3;
    tr.appendChild(td);
    body.appendChild(tr);
  }
}

function renderFullLifecycle(rows) {
  const node = document.getElementById("full-lifecycle-result");
  if (!node) return;
  const first = (rows || [])[0];
  if (!first) {
    node.textContent = "No completed full-lifecycle comparison is recorded yet.";
    return;
  }
  node.textContent = `${first.Executor}: ${first["Full-lifecycle time"] || "recorded"}`;
}

function renderTimingComponents(rows) {
  const benchmark = document.getElementById("benchmark");
  if (!benchmark || !Array.isArray(rows) || !rows.length) return;

  const existing = document.getElementById("timing-components-live");
  if (existing) existing.remove();

  const panel = document.createElement("div");
  panel.id = "timing-components-live";
  panel.className = "panel";
  panel.style.marginTop = "16px";

  const title = document.createElement("h3");
  title.textContent = "Where the time actually went";
  panel.appendChild(title);

  const intro = document.createElement("p");
  intro.className = "muted";
  intro.textContent = "Deterministic GitHub overhead is separated from the observable provider/AI-process interval. Pure model compute remains unknown unless the provider exposes it.";
  panel.appendChild(intro);

  const wrap = document.createElement("div");
  wrap.className = "table-wrap";
  const table = document.createElement("table");
  const thead = document.createElement("thead");
  const headerRow = document.createElement("tr");
  const columns = [
    ["Route", "Executor / route"],
    ["Control / runner", "Control → runner/accept"],
    ["Deterministic / handoff", "Deterministic orchestration / handoff"],
    ["Provider / AI process", "Observable provider / AI-process interval"],
    ["Delivery tail", "Delivery tail"],
    ["Pure model", "Pure model compute"],
    ["Review-ready wall clock", "Review-ready wall clock"],
    ["Confidence", "Confidence"],
  ];

  for (const [heading] of columns) {
    const th = document.createElement("th");
    th.textContent = heading;
    headerRow.appendChild(th);
  }
  thead.appendChild(headerRow);
  table.appendChild(thead);

  const tbody = document.createElement("tbody");
  for (const row of rows.slice(0, 7)) {
    const tr = document.createElement("tr");
    for (const [, key] of columns) {
      tr.appendChild(cell(row[key]));
    }
    tbody.appendChild(tr);
  }
  table.appendChild(tbody);
  wrap.appendChild(table);
  panel.appendChild(wrap);
  benchmark.appendChild(panel);
}

async function loadCanonicalState() {
  const status = document.getElementById("cms-status");
  try {
    const response = await fetch(`${STATE_URL}?v=${Date.now()}`, { cache: "no-store" });
    if (!response.ok) throw new Error(`HTTP ${response.status}`);
    const state = await response.json();

    setText("course-version", `v${state.course?.version || "—"}`);
    setText("home-intro", state.course?.home_intro);
    setText("course-stage", state.student?.course_stage);
    setText("current-focus", state.student?.current_focus);
    setText("next-objective", state.student?.next_objective);
    setText("benchmark-verified", state.benchmark?.last_verified);
    setText("source-commit", (state.generated_from_commit || "unknown").slice(0, 12));

    renderScoreboard(state.benchmark?.review_ready_scoreboard);
    renderFullLifecycle(state.benchmark?.full_lifecycle);
    renderTimingComponents(state.benchmark?.timing_components);

    if (status) {
      status.textContent = "Live from canonical repository state";
      status.dataset.state = "ok";
    }
  } catch (error) {
    console.error("Unable to load canonical public state", error);
    if (status) {
      status.textContent = "Live state unavailable — use canonical repository links below";
      status.dataset.state = "error";
    }
  }
}

loadCanonicalState();