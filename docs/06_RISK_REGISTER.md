# 06 — Risk Register

## Risk 1 — Hardware Complexity

### Problem

Hardware development can become slow, expensive, and unstable.

### Mitigation

```text
start with one supported board
avoid custom PCB at first
use known modules
build 1 → 5 → 50 → 200 units gradually
```

## Risk 2 — Voice API Cost

### Problem

Speech-to-text, LLM, and text-to-speech usage can create high operating costs.

### Mitigation

```text
push-to-talk
short command windows
usage caps
local caching
low-cost STT/TTS providers
business usage billing
```

## Risk 3 — User Confusion

### Problem

Users may not understand “edge AI platform”.

### Mitigation

Sell concrete scenarios:

```text
talk to your documents
save office notes by voice
log workshop measurements
ask the device for procedures
```

## Risk 4 — Security

### Problem

A voice-controlled device can create serious risks if actions are not governed.

### Mitigation

```text
device identity
permission profiles
human approval gates
blocked commands
audit logs
encrypted communication
signed firmware later
```

## Risk 5 — Certification Cost

### Problem

Selling hardware at scale may require FCC/CE/other compliance testing.

### Mitigation

```text
use pre-certified ESP32 modules
avoid custom RF first
start with dev kit and pilots
perform pre-test before commercial series
plan certification only after stable design
```

## Risk 6 — Support Burden

### Problem

Hardware customers need support.

### Mitigation

```text
clear compatibility list
simple setup guide
limited first batch
known hardware configuration
diagnostic logs
remote status report
```

## Risk 7 — Weak Differentiation

### Problem

The market may see it as another smart speaker.

### Mitigation

Emphasize:

```text
Director integration
business workflows
documentation access
local logging
human approval
device registry
custom deployment
```

## Risk 8 — Too Many Product Lines Too Early

### Problem

Trying to build office, workshop, education, hotel, and home products at once will dilute execution.

### Mitigation

Start with:

```text
Dev Kit
Office Pilot
Docs Node
```

Everything else is later.
