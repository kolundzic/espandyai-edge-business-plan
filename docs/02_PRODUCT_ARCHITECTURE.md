# 02 — Product Architecture

## 1. Architecture Overview

ESPAndyAI EDGE has three main layers:

```text
1. Edge Node
2. Director Hub
3. Trust and Governance Layer
```

## 2. Edge Node

The Edge Node is the physical device.

### Typical Components

```text
ESP32-S3 or similar microcontroller
I2S digital microphone
I2S amplifier and speaker
microSD card
OLED display
physical buttons
Wi-Fi
optional Bluetooth
optional sensors
optional battery
optional enclosure
```

### Role

The node should not be treated as a full standalone LLM machine.

Its role is:

```text
listen
capture
send
receive
speak
log
execute local safe actions
```

## 3. Director Hub

AndyAI Director is the central brain.

### Functions

```text
speech routing
intent parsing
memory lookup
document search
tool execution
policy check
approval gate
action planning
device command routing
logging
dashboard reporting
```

## 4. Trust Layer

### Minimum Required Trust Features

```text
device_id
owner_id
permission_profile
allowed_actions
blocked_actions
event_log
audit_log
human_approval_gate
status reporting
```

## 5. Recommended v0.1 Data Flow

```text
User presses button
↓
Node records short voice clip
↓
Node sends audio/event to Director API
↓
Director transcribes or routes speech-to-text
↓
Director interprets intent
↓
Policy engine checks action
↓
Director creates response
↓
Node receives text/audio/action
↓
Node speaks response or triggers safe local action
↓
Node writes event to SD log
```

## 6. Security Principles

- No dangerous action without policy approval.
- No silent execution for high-risk commands.
- Every node must have an identity.
- Every action must be logged.
- Firmware updates should later be signed.
- Device configuration should be auditable.
- Communication should be encrypted in production.

## 7. Glossary

**Edge Node (ivični čvor)** — mali uređaj koji se nalazi blizu korisnika ili fizičkog procesa.

**Director Hub (centralni upravljački mozak)** — softverski sistem koji razume, odlučuje i koordinira.

**Policy Engine (motor pravila)** — deo sistema koji odlučuje šta je dozvoljeno, šta traži potvrdu, a šta se blokira.

**Audit Log (audit zapis)** — trag događaja koji pokazuje šta se desilo, kada i zašto.
