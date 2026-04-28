# Continuation Map — v3.1

## Purpose

This document defines where the project goes after this business repository.

The key rule:

```text
Do not turn the business dossier into a dumping ground.
Create focused continuation repos and artifact packs.
```

---

# 1. Technical prototype repo

## Recommended repo

```text
andyai-director-edge-node
```

## Purpose

Build the actual hardware/software prototype.

## Contents

```text
firmware/
hardware/
docs/
schemas/
examples/
tools/
tests/
README.md
VERIFY.sh
```

## First version target

```text
v0.1 = ESP32-S3 push-to-talk event → Director API → response → SD log
```

## Core files

```text
README.md
HARDWARE_BOM.md
WIRING_GUIDE.md
FIRMWARE_MVP.md
DIRECTOR_API_CONTRACT.md
SD_LOG_SCHEMA.md
VERIFY.sh
```

---

# 2. Existing hardware canon repo

## Existing related repo

```text
andyai-mini-node-sd-canon
```

## Role

Historical and conceptual hardware-node canon.

This repo should remain connected as the origin/canonical reference for:

```text
mini node
SD memory
physical AI node concept
ESP32-class hardware thinking
```

---

# 3. Landing page implementation

## Possible repo/page

```text
espandyai-edge-landing
```

or integrate into:

```text
andyai-knowledge-hub
andyai.ai public site
```

## Purpose

Create public-facing lead capture and marketing page.

## Contents

```text
Next.js page
CTA forms
pilot request
dev kit waitlist
investor brief request
public copy
analytics
```

---

# 4. Investor artifact pack

## Suggested export pack

```text
ESPANDYAI_EDGE_INVESTOR_PDF_PACK
```

## Purpose

Create external documents from the business repo.

## Artifacts

```text
Investor One-Pager PDF
Public Brief PDF
Pilot Offer PDF
Pitch Deck PDF/PPTX
Executive Summary PDF
Demo Script PDF
```

---

# 5. Pilot execution tracker

## Possible repo or Notion database

```text
espandyai-edge-pilot-tracker
```

## Purpose

Track leads, pilots, demo meetings, outcomes, and follow-ups.

## Contents

```text
CRM table
pilot report template
contact notes
meeting status
next action
proposal status
```

---

# 6. Recommended execution order

```text
1. Lock this repo at v3.1
2. Create andyai-director-edge-node v0.1
3. Create PDF/export pack
4. Build landing page
5. Prepare pitch deck
6. Start pilot outreach
7. Record first demo
8. Update business repo only with links/status
```

---

# 7. Canonical continuation principle

```text
Business repo = why, what, market, investor, plan
Technical repo = how the device works
Landing repo = how public leads arrive
Artifact pack = how humans receive the story
Pilot tracker = how business proof is collected
```
