# Mission 01 — Sequential vs Random

## Briefing
Two workloads move the same number of bytes. One finishes quickly; the other crawls.

## Objective
Understand sequential vs random I/O, block size, read vs write, queue depth, throughput, IOPS, and latency.

## Build
Run several controlled, size-limited `fio` profiles that vary one property at a time: sequential/random, read/write, block size, and queue depth.

## Challenge
Predict which metric should dominate before each run, then compare prediction with evidence.

## Evidence
- workload-profile table
- throughput/IOPS/latency results
- explanation of why “MB/s” alone can hide important behavior

## Victory condition
You can infer what kind of storage pressure a workload creates from its access pattern rather than just its total dataset size.
