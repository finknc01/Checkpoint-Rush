# Mission 05 — The Checkpoint Stampede

## Briefing
Mercury runs well until several training jobs write checkpoints at nearly the same time.

## Objective
Recreate bursty checkpoint traffic and measure peak rather than average demand.

## Build
Create multiple processes/clients that periodically write large disposable checkpoint-like files. Start with staggered intervals, then align them into a shared checkpoint window.

## Measure
Write throughput, latency, queue/utilization, completion time, and impact on a concurrent read workload.

## Evidence
- checkpoint timeline
- staggered vs synchronized results
- peak-demand calculation
- affected-workload observations

## Victory condition
You can show why a storage system can look fine on average and still fail workload expectations during synchronized bursts.
