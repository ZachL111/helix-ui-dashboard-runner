# Review Journal

The review surface for `helix-ui-dashboard-runner` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its frontend apps focus without claiming live deployment or external usage.

## Cases

- `baseline`: `view drift`, score 225, lane `ship`
- `stress`: `state pressure`, score 145, lane `ship`
- `edge`: `layout risk`, score 238, lane `ship`
- `recovery`: `interaction cost`, score 219, lane `ship`
- `stale`: `view drift`, score 220, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
