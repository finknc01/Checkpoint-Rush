# Mission 03 — The Cache Illusion

## Briefing
The second benchmark run is dramatically faster. Someone declares the storage upgrade successful.

## Objective
Understand page cache, buffered I/O, warm vs cold tests, sync behavior, and benchmark validity.

## Tasks
Run a repeatable read test multiple times and observe warm-cache effects. Use safe methods/tool options to distinguish cache effects from underlying storage. Do not drop system caches casually on a production/personal host; use a disposable VM or benchmark options designed to control caching where appropriate.

## Evidence
- cold/warm comparison
- memory/cache observations
- benchmark methodology note

## Victory condition
You can identify when a storage result is actually measuring memory/cache behavior.
