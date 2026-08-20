# Final — Mercury Incident Report

## Briefing
Mercury suffers the original production-style incident: several jobs slow dramatically during a checkpoint window, GPU utilization collapses, and the storage service never technically goes offline.

## Challenge
Run a combined scenario using concurrent training-like readers plus synchronized checkpoint writers. Optionally add one misleading signal such as network delay or a warm-cache baseline.

## Required investigation
1. Establish the exact symptom timeline.
2. Trace application → filesystem/cache → block/shared storage → network where applicable.
3. Identify first saturation/queueing evidence.
4. Correlate it with workload/GPU idle behavior.
5. Test at least two competing hypotheses.
6. Apply the best mitigation from Mission 07 and rerun the same scenario.

## Final evidence
- incident timeline
- cross-layer metrics
- root-cause argument
- mitigation A/B result
- production monitoring recommendations
- limitations of the laptop simulation

## Victory condition
Checkpoint-Rush is complete when you can demonstrate that “the GPUs are slow” may really mean “the data path is starving them,” and prove where the starvation begins.
