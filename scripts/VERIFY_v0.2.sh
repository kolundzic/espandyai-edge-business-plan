#!/usr/bin/env bash
set -euo pipefail

required_files=(
  "docs/VERSION_LINEAGE.md"
  "docs/08_EXECUTION_PLAN_90_DAYS.md"
  "docs/v0.2_UPGRADE_NOTES.md"
  "investor/INVESTOR_MEMO_v0.2.md"
  "investor/10_SLIDE_PITCH_DECK_SCRIPT.md"
  "marketing/GO_TO_MARKET_90_DAY_CAMPAIGN.md"
  "production/PROTOTYPE_TO_BATCH_ROADMAP.md"
  "finance/UNIT_ECONOMICS_v0.2.md"
)

for f in "${required_files[@]}"; do
  if [ ! -f "$f" ]; then
    echo "Missing required file: $f"
    exit 1
  fi
done

echo "✅ v0.2 verification passed."
