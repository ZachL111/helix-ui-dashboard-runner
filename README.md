# helix-ui-dashboard-runner

`helix-ui-dashboard-runner` keeps a focused Lua implementation around frontend apps. The project goal is to develop a Lua command-oriented project for dashboard scenarios with node-edge fixtures, cycle and reachability reports, and no production deployment claims.

## Why This Exists

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Helix UI Dashboard Runner Review Notes

Start with `layout risk` and `state pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Capabilities

- `fixtures/domain_review.csv` adds cases for view drift and state pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/helix-ui-dashboard-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `layout risk` and `state pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Lua addition stays small enough to inspect in one sitting.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Roadmap

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
