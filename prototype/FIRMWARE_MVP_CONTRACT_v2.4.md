# Firmware MVP Contract v2.4

## MVP rule

The first firmware must be boring and reliable.

Do not attempt full autonomous intelligence on ESP32.

The device is:

```text
physical interface
local logger
event sender
response player
safe action executor
```

Director is:

```text
brain
memory
policy
orchestrator
approval layer
```

---

## Required firmware states

```text
BOOTING
WIFI_CONNECTING
READY
LISTENING
SENDING
WAITING_FOR_DIRECTOR
SPEAKING
LOGGING
ERROR
```

---

## Required local logs

```text
boot event
Wi‑Fi status
button press
Director request
Director response
error state
firmware version
```

---

## Required demo command

```text
Button press → send test event → Director response → speaker/status output → SD log
```

---

## Not required in MVP

```text
perfect speech recognition
offline LLM
complex wake word
OTA update
battery optimization
multi-device mesh
final enclosure
```
