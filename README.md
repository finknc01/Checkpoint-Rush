# Checkpoint-Rush

> **The GPUs are expensive, storage is “fine,” and training still stalls every checkpoint. Prove where the time is actually going.**

## Project status

| Field | Current state |
|---|---|
| **Status** | **Planned — baseline/access-pattern work early; main bottleneck campaign later** |
| **Current stage** | Campaign authored; no benchmark, checkpoint-storm result, or bottleneck conclusion is claimed yet |
| **Lab environment** | Real local storage experiments plus laptop-scale shared-storage simulation |
| **Evidence rule** | Results must state workload pattern, cache/sync conditions, concurrency, and whether behavior was local, shared, measured, or modeled |
| **Last plan sync** | 2026-08-19 |

## Purpose

Checkpoint-Rush is the AI storage-path and bottleneck lab. Fictional cluster **Mercury** suffers a recurring incident: several training jobs checkpoint at roughly the same time, storage latency rises, GPU utilization collapses, and the storage service never technically goes offline.

The central question is:

> **When the GPU is waiting, what exactly is it waiting for?**

The lab uses controlled I/O experiments to connect application behavior to filesystem/cache/block/shared-storage behavior and to distinguish storage bottlenecks from misleading CPU/network/GPU symptoms.

## Skills developed

- Linux storage/filesystem fundamentals
- throughput, IOPS, latency, queue depth, and access patterns
- local NVMe vs shared/network-storage concepts
- `fio`, `iostat`, `vmstat`, `lsblk`, and related diagnostics
- page-cache/buffering/sync reasoning
- sequential/random and large/small I/O behavior
- checkpoint concurrency/contention
- correlating data-path pressure with workload/GPU idle time
- experiment design and mitigation A/B testing

## Mercury campaign

The files in [`missions/`](missions/) are authoritative. Missions 00–01 are the early storage fundamentals; Missions 02–06 return during the observability/storage block; Mission 07 + Final may move into targeted gap closure if Weeks 41–42 are full.

| Mission | Investigation | Primary outcome |
|---|---|---|
| [00 — Baseline](missions/00-baseline.md) | Map the real storage path and establish initial measurements | known starting state |
| [01 — Access Patterns](missions/01-access-patterns.md) | Compare access patterns and what they demand from storage | workload-pattern evidence |
| [02 — Small Files](missions/02-small-files.md) | Show metadata/small-I/O behavior | small-file experiment |
| [03 — Cache](missions/03-cache.md) | Distinguish cache effects from actual device/shared-storage behavior | cache-aware baseline |
| [04 — Shared Storage](missions/04-shared-storage.md) | Compare local and laptop-scale shared paths | shared-path evidence |
| [05 — Stampede](missions/05-stampede.md) | Synchronize competing checkpoint writers | contention/queueing timeline |
| [06 — GPU Idle](missions/06-gpu-idle.md) | Correlate I/O pressure with workload/accelerator waiting | cross-layer correlation |
| [07 — Mitigations](missions/07-mitigations.md) | Compare staggering/staging/caching or other practical mitigations | A/B mitigation result |
| [Final — Mercury](missions/final-mercury.md) | Diagnose the complete checkpoint incident from competing hypotheses | evidence-based incident report |

## Measurement rule

Storage numbers without context are not useful. Every benchmark should state:

- read/write mix and block/file pattern
- dataset/file size
- concurrency
- cache state and sync/direct-I/O assumptions where relevant
- local vs network/shared path
- elapsed time, throughput/IOPS/latency metrics used
- laptop/simulation limitations

## Safety and scale

Use disposable test paths and strict file-size/runtime limits. The objective is to understand storage behavior, not to fill or damage the laptop's primary filesystem.

A laptop-scale NFS/shared-storage simulation can demonstrate queueing, cache, and contention concepts, but it must not be described as equivalent to an enterprise parallel filesystem or storage appliance.

## Completion condition

Checkpoint-Rush is complete when you can demonstrate that an apparent “GPU performance” incident can originate in the data path, identify where saturation/queueing begins, test competing hypotheses, and show whether a mitigation materially improves the same repeatable scenario.
