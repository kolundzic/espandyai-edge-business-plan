#!/usr/bin/env bash
set -euo pipefail

VERSION="${1:-v3.0}"

base_required=(
  "README.md"
  "docs/CANONICAL_PROJECT_HEADER.md"
  "RELEASE_v2.0.md"
)

check_files() {
  for f in "$@"; do
    if [ ! -f "$f" ]; then
      echo "❌ Missing required file for $VERSION: $f"
      exit 1
    fi
  done
}

check_files "${base_required[@]}"

case "$VERSION" in
  v2.1)
    check_files "pdf_assets/INVESTOR_ONE_PAGER_PRINT_v2.1.md" "pdf_assets/PUBLIC_BRIEF_PRINT_v2.1.md"
    ;;
  v2.2)
    check_files "web/NEXTJS_LANDING_IMPLEMENTATION_SPEC_v2.2.md" "web/LEAD_CAPTURE_FORM_SCHEMA_v2.2.json"
    ;;
  v2.3)
    check_files "deck/PITCH_DECK_PRODUCTION_SCRIPT_v2.3.md" "deck/SLIDE_ASSET_CHECKLIST_v2.3.md"
    ;;
  v2.4)
    check_files "prototype/PROTOTYPE_REPO_BRIDGE_v2.4.md" "prototype/FIRMWARE_MVP_CONTRACT_v2.4.md"
    ;;
  v2.5)
    check_files "crm/PILOT_OUTREACH_CRM_v2.5.csv" "crm/PILOT_PIPELINE_PLAYBOOK_v2.5.md"
    ;;
  v2.6)
    check_files "demo/DEMO_DAY_RUNBOOK_v2.6.md" "demo/FOUNDER_DEMO_SCRIPT_v2.6.md"
    ;;
  v2.7)
    check_files "investor/INVESTOR_DATA_ROOM_INDEX_v2.7.md" "investor/DUE_DILIGENCE_ANSWERS_v2.7.md"
    ;;
  v2.8)
    check_files "operations/LAUNCH_OPERATIONS_CALENDAR_v2.8.md" "operations/POST_LAUNCH_FEEDBACK_LOOP_v2.8.md"
    ;;
  v2.9)
    check_files "legal/EXTERNAL_PRESENTATION_DISCLAIMER_v2.9.md" "docs/FINAL_EXTERNAL_REVIEW_CHECKLIST_v2.9.md"
    ;;
  v3.0)
    check_files \
      "pdf_assets/INVESTOR_ONE_PAGER_PRINT_v2.1.md" \
      "web/NEXTJS_LANDING_IMPLEMENTATION_SPEC_v2.2.md" \
      "deck/PITCH_DECK_PRODUCTION_SCRIPT_v2.3.md" \
      "prototype/PROTOTYPE_REPO_BRIDGE_v2.4.md" \
      "crm/PILOT_PIPELINE_PLAYBOOK_v2.5.md" \
      "demo/DEMO_DAY_RUNBOOK_v2.6.md" \
      "investor/INVESTOR_DATA_ROOM_INDEX_v2.7.md" \
      "operations/LAUNCH_OPERATIONS_CALENDAR_v2.8.md" \
      "legal/EXTERNAL_PRESENTATION_DISCLAIMER_v2.9.md" \
      "RELEASE_v3.0.md" \
      "docs/V3_VERSION_LINEAGE.md"
    grep -q "Small Node. Big Brain. Human Command." RELEASE_v3.0.md || {
      echo "❌ RELEASE_v3.0.md missing canonical line"
      exit 1
    }
    ;;
  *)
    echo "❌ Unknown version for verification: $VERSION"
    exit 1
    ;;
esac

grep -q "ESPAndyAI EDGE" README.md || {
  echo "❌ README.md missing ESPAndyAI EDGE"
  exit 1
}

echo "✅ v3 verification passed for $VERSION."
