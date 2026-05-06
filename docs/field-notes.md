# Field Notes

This note keeps the frontend apps assumptions visible beside the checks.

The domain cases cover `view drift`, `state pressure`, `layout risk`, and `interaction cost`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

The widest spread is between `layout risk` and `state pressure`, so those are the first two cases I would preserve during a refactor.

The extra check gives the repository a behavior path that can fail for a domain reason, not only a syntax reason.
