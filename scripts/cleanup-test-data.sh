#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/.." && pwd)"
# shellcheck source=../config/test-limits.env
source "${REPO_ROOT}/config/test-limits.env"

target="$(realpath -m -- "${TEST_DATA_DIR}")"
home="$(realpath -m -- "${HOME}")"

if [[ -z "${target}" || "${target}" == "/" || "${target}" == "${home}" ]]; then
  echo "Refusing unsafe cleanup target: ${target}" >&2
  exit 1
fi

if [[ ! "${target}" =~ ^/tmp/checkpoint-rush-[A-Za-z0-9._-]+$ ]]; then
  echo "Refusing target outside the expected /tmp/checkpoint-rush-* pattern: ${target}" >&2
  exit 1
fi

if [[ ! -e "${target}" ]]; then
  echo "No test data directory exists at ${target}."
  exit 0
fi

if [[ -L "${target}" ]]; then
  echo "Refusing to recursively remove a symlink target: ${target}" >&2
  exit 1
fi

echo "Checkpoint-Rush cleanup target: ${target}"
du -sh -- "${target}" || true
read -r -p "Delete this disposable test directory? [y/N] " answer
if [[ ! "${answer}" =~ ^[Yy]$ ]]; then
  echo "Cancelled."
  exit 0
fi

rm -rf --one-file-system -- "${target}"
echo "Deleted ${target}."
