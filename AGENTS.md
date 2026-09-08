# Workspace instruction inheritance

- Before taking any task action in this repository, resolve its Git repository
  root and treat `/Users/feedxapp/Desktop/feedx_projects` as the bounded
  workspace root.
- Starting at that workspace root and walking toward the directory containing
  this repository root, check every ancestor directory for `AGENTS.md`. Read
  every existing non-empty file completely, from the outermost directory to
  the innermost, then apply this repository's `AGENTS.md`.
- This explicit ancestor scan is required even when Codex does not discover a
  file automatically because it is outside the current Git root. Do not scan
  for instruction files above the bounded workspace root.
- Ancestor files supply broader workspace policy; files closer to the current
  repository supply more specific policy. When instructions conflict, the
  closest applicable repository instruction controls that repository-specific
  detail, subject to system, developer, safety, and the workspace owner's
  latest explicit request.
- An ancestor instruction never implies permission to stage, commit, push,
  deploy, mutate production, or invoke a paid third party. Those actions still
  require the authorization defined by the applicable instructions.
- If an ancestor instruction file exists but cannot be read completely, report
  that before performing any consequential action.

# CI and external-service guardrails

- Do not edit CircleCI, CI/CD, deployment, integration, billing-sensitive, or
  third-party-provider configuration unless the owner explicitly requests the
  exact file and behavior change in the current chat.
- Never add or expand behavior that can materially increase CI time, compute,
  storage, bandwidth, paid API usage, deployment time, or third-party
  processing without that explicit current authorization.
- Every production deploy triggered from CI must be fire-and-forget: CI may
  validate and dispatch one detached remote worker, then it must end. Never
  wait for, poll, retry, or verify rollout, migration, health, or status from
  the CI workflow.
- General requests to fix, improve, refactor, optimize, or comment out tests
  are not permission to change any other CI or third-party behavior.
- Preserve unrelated user changes and choose the smallest in-scope change.
