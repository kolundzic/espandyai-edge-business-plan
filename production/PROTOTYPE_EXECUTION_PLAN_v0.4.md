# Prototype Execution Plan v0.4

## Goal

Build the first functional ESPAndyAI EDGE prototype that proves the core loop:

```text
voice/button event
→ ESP32-class node
→ Director request
→ Director decision
→ spoken reply or local action
→ local log
```

---

## Prototype v0.1 functional scope

The first physical prototype must do only a few things reliably:

```text
1. connect to Wi‑Fi
2. identify itself as a device
3. accept push-to-talk input
4. send event payload to Director endpoint
5. receive short response
6. play simple spoken response or status audio
7. write local log to SD
8. execute one visible local action such as LED or screen update
```

Do not overload the first prototype.

The first milestone is not “perfect AI voice assistant.”

The first milestone is:

> A physical node proves it can communicate with the Director brain.

---

## Recommended hardware

```text
ESP32-S3 development board
I2S microphone
I2S amplifier
small speaker
microSD module
OLED display
two buttons
USB-C power
optional battery module
simple 3D printed case
```

---

## Firmware responsibilities

```text
device boot
Wi‑Fi connection
device ID load
button event capture
audio capture or simplified command trigger
HTTP/WebSocket request to Director
response parsing
speaker/status output
SD log write
error state display
```

---

## Director responsibilities

```text
receive device event
identify node
parse intent
check policy
generate response
return action packet
log event
display event in dashboard
```

---

## Prototype acceptance test

A successful demo requires this script:

```text
Andy presses button.
Andy says: “Save this as a Director Edge Node test.”
Device sends event.
Director logs event.
Device replies: “Saved.”
SD card contains event log.
Dashboard shows node activity.
```

---

## Prototype success criteria

```text
latency acceptable for demo
logs visible
no manual cable intervention during demo
repeatable at least 10 times
clear video demonstration possible
```

---

## Prototype failure conditions

```text
Wi‑Fi setup too fragile
audio unreadable
device freezes
no local log
Director cannot identify device
demo requires too many hidden manual steps
```
