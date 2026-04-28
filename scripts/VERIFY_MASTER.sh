#!/usr/bin/env bash
set -euo pipefail

required=(
  "README.md"
  "docs/CANONICAL_PROJECT_HEADER.md"
  "docs/VERSION_LINEAGE.md"
  "docs/MASTER_EXECUTION_CANON.md"
  "investor/10_SLIDE_PITCH_DECK_SCRIPT.md"
  "investor/INVESTOR_MEMO_v0.2.md"
  "marketing/LANDING_PAGE_COPY.md"
  "production/HARDWARE_SPEC.md"
  "finance/FINANCIAL_MODEL.md"
  "legal/LEGAL_POSITIONING.md"
)

for f in "${required[@]}"; do
  if [ ! -f "$f" ]; then
    echo "❌ Missing required file: $f"
    exit 1
  fi
done

grep -q "ESPAndyAI EDGE" README.md || {
  echo "❌ README.md missing ESPAndyAI EDGE"
  exit 1
}

echo "✅ MASTER verification passed."
