const STATE_URL = "https://raw.githubusercontent.com/tbhrc/github-course/main/site/public-state.json";

function setText(id, value) {
  const node = document.getElementById(id);
  if (node && value) node.textContent = value;
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

    renderFullLifecycle(state.benchmark?.full_lifecycle);

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