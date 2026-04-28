#!/usr/bin/env bash
set -euo pipefail

required=(
  "README.md"
  "RELEASE_v3.0.md"
  "docs/V3_VERSION_LINEAGE.md"
  "FINAL_FOUNDER_SEAL_v3.1.md"
  "docs/REPO_STATUS_v3.1.md"
  "docs/NEXT_REPOS_MAP_v3.1.md"
  "governance/ARCHIVE_AND_CONTINUATION_POLICY_v3.1.md"
)

for f in "${required[@]}"; do
  if [ ! -f "$f" ]; then
    echo "❌ Missing required file: $f"
    exit 1
  fi
done

grep -q "FINAL FOUNDER SEAL" FINAL_FOUNDER_SEAL_v3.1.md || {
  echo "❌ FINAL_FOUNDER_SEAL_v3.1.md missing seal title"
  exit 1
}

grep -q "Small Node. Big Brain. Human Command." FINAL_FOUNDER_SEAL_v3.1.md || {
  echo "❌ FINAL_FOUNDER_SEAL_v3.1.md missing canonical line"
  exit 1
}

grep -q "andyai-director-edge-node" docs/NEXT_REPOS_MAP_v3.1.md || {
  echo "❌ NEXT_REPOS_MAP_v3.1.md missing technical continuation repo"
  exit 1
}

echo "✅ v3.1 final seal verification passed."
