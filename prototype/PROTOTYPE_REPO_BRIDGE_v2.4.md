# Prototype Repo Bridge v2.4

## Purpose

This file defines the bridge between this business repository and the future technical prototype repository.

---

## Business repo

```text
espandyai-edge-business-plan
```

Purpose:

```text
business plan
investor narrative
marketing
production roadmap
pilot materials
```

---

## Technical repo options

Recommended technical repo name:

```text
andyai-director-edge-node
```

Existing related canon:

```text
andyai-mini-node-sd-canon
```

---

## What the technical repo should contain

```text
firmware/
hardware/
docs/
examples/
schemas/
tools/
tests/
README.md
VERIFY.sh
```

---

## MVP firmware scope

```text
device boot
Wi‑Fi connection
device identity
button event
simple audio/event capture
Director API call
response parse
speaker/status output
SD local log
LED/screen status
```

---

## Director API contract

The node should send:

```json
{
  "device_id": "edge-node-001",
  "firmware_version": "0.1.0",
  "event_type": "voice_or_button",
  "timestamp": "ISO-8601",
  "payload": {
    "text": "optional transcribed text",
    "audio_ref": "optional audio reference",
    "button": "push_to_talk"
  }
}
```

Director should return:

```json
{
  "status": "ok",
  "response_type": "speak_and_log",
  "message": "Saved.",
  "action": {
    "type": "display",
    "value": "Saved"
  },
  "log_id": "director-event-id"
}
```

---

## Bridge rule

Business promises must not outrun technical proof.

Each public claim should map to:

```text
implemented
prototype
planned
research
```
