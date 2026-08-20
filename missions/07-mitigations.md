# Mission 07 — Mitigation Tournament

## Briefing
Mercury leadership wants a fix. Several teams propose expensive hardware immediately.

## Objective
Compare architectural and operational mitigations using the same checkpoint workload.

## Contenders
Test or model at least four: stagger checkpoint times, reduce frequency, write locally then copy asynchronously, change file layout, cache/stage datasets locally, cap concurrency, compress/change checkpoint format where workload permits, or increase modeled shared-storage capacity.

## Evidence
- before/after metrics
- cost/complexity/benefit matrix
- new risks introduced by each mitigation

## Victory condition
You recommend a mitigation because it changes the measured bottleneck, not because it sounds faster.
