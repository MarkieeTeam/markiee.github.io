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
