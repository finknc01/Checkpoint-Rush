# Mission 06 — Why Is the GPU Waiting?

## Briefing
The expensive symptom is low GPU utilization. The root cause may be nowhere near the GPU.

## Objective
Correlate data-loading/checkpoint delay with accelerator idle time.

## Build
Use a small GPU workload if supported, or a controlled producer/consumer pipeline that clearly separates “waiting for input” from “computing.” Add a storage-delay stage and capture timestamps plus GPU utilization where available.

## Challenge
Create two low-GPU-utilization cases with different causes: one storage-starved, one compute/workload configuration issue. Build evidence that distinguishes them.

## Evidence
- end-to-end pipeline diagram
- storage wait vs compute timeline
- GPU/CPU/storage metrics
- root-cause comparison

## Victory condition
You can prove that adding another GPU would not solve a storage-fed idle problem.
