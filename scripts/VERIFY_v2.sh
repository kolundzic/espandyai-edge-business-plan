#!/usr/bin/env bash
set -euo pipefail

VERSION="${1:-v2.0}"

base_required=(
  "README.md"
  "docs/CANONICAL_PROJECT_HEADER.md"
  "RELEASE_v1.0.md"
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
  v1.1)
    check_files "visuals/INVESTOR_VISUAL_SYSTEM_v1.1.md"
    ;;
  v1.2)
    check_files \
      "visuals/INVESTOR_VISUAL_SYSTEM_v1.1.md" \
      "pitch/PITCH_DECK_FULL_TEXT_v1.2.md" \
      "pitch/SLIDE_DESIGN_BRIEF_v1.2.md"
    ;;
  v1.3)
    check_files \
      "visuals/INVESTOR_VISUAL_SYSTEM_v1.1.md" \
      "pitch/PITCH_DECK_FULL_TEXT_v1.2.md" \
      "landing/LANDING_PAGE_STRUCTURE_v1.3.md" \
      "landing/LANDING_PAGE_NEXTJS_COMPONENT_SPEC_v1.3.md"
    ;;
  v1.4)
    check_files \
      "visuals/INVESTOR_VISUAL_SYSTEM_v1.1.md" \
      "pitch/PITCH_DECK_FULL_TEXT_v1.2.md" \
      "landing/LANDING_PAGE_STRUCTURE_v1.3.md" \
      "productization/PRODUCTIZATION_BLUEPRINT_v1.4.md" \
      "productization/DEVICE_SKU_MATRIX_v1.4.md"
    ;;
  v1.5)
    check_files \
      "productization/PRODUCTIZATION_BLUEPRINT_v1.4.md" \
      "partner/PARTNER_AND_PILOT_PACK_v1.5.md" \
      "partner/PILOT_DISCOVERY_WORKSHEET_v1.5.md"
    ;;
  v1.6)
    check_files \
      "partner/PARTNER_AND_PILOT_PACK_v1.5.md" \
      "procurement/SUPPLIER_AND_BOM_STRATEGY_v1.6.md" \
      "procurement/BOM_TEMPLATE_v1.6.csv"
    ;;
  v1.7)
    check_files \
      "procurement/SUPPLIER_AND_BOM_STRATEGY_v1.6.md" \
      "press/PRESS_AND_PUBLIC_NARRATIVE_v1.7.md" \
      "press/FOUNDER_BIO_v1.7.md"
    ;;
  v1.8)
    check_files \
      "press/PRESS_AND_PUBLIC_NARRATIVE_v1.7.md" \
      "metrics/METRICS_AND_DATA_ROOM_v1.8.md" \
      "metrics/PILOT_REPORT_TEMPLATE_v1.8.md"
    ;;
  v1.9)
    check_files \
      "metrics/METRICS_AND_DATA_ROOM_v1.8.md" \
      "operations/COMMERCIAL_OPERATIONS_PLAYBOOK_v1.9.md" \
      "operations/FOUNDER_WEEKLY_DASHBOARD_v1.9.md"
    ;;
  v2.0)
    check_files \
      "visuals/INVESTOR_VISUAL_SYSTEM_v1.1.md" \
      "pitch/PITCH_DECK_FULL_TEXT_v1.2.md" \
      "landing/LANDING_PAGE_STRUCTURE_v1.3.md" \
      "productization/PRODUCTIZATION_BLUEPRINT_v1.4.md" \
      "partner/PARTNER_AND_PILOT_PACK_v1.5.md" \
      "procurement/SUPPLIER_AND_BOM_STRATEGY_v1.6.md" \
      "press/PRESS_AND_PUBLIC_NARRATIVE_v1.7.md" \
      "metrics/METRICS_AND_DATA_ROOM_v1.8.md" \
      "operations/COMMERCIAL_OPERATIONS_PLAYBOOK_v1.9.md" \
      "RELEASE_v2.0.md" \
      "docs/V2_VERSION_LINEAGE.md"
    grep -q "Small Node. Big Brain. Human Command." RELEASE_v2.0.md || {
      echo "❌ RELEASE_v2.0.md missing canonical line"
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

echo "✅ v2 verification passed for $VERSION."
