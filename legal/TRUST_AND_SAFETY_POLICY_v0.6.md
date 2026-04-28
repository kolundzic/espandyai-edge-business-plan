# Trust and Safety Policy v0.6

## Core belief

A physical AI device must not be treated as a toy if it can execute actions.

Trust must be built into the product from the beginning.

---

## Device identity

Every node should have:

```text
device_id
owner_id
firmware_version
permission_profile
last_seen timestamp
local log state
```

---

## Permission profiles

Example profiles:

```text
demo_only
office_basic
docs_assistant
workshop_node
admin_controlled
restricted_child_or_elderly_context
```

---

## Action categories

### Safe actions

```text
speak reply
display message
save note
turn LED on/off
send status event
```

### Approval-required actions

```text
send email
share document
change configuration
trigger external workflow
control connected device
```

### Blocked actions

```text
delete files without approval
send private data without approval
execute unknown commands
bypass policy
disable logging
```

---

## Human approval

The system should support approval gates for risky actions.

Approval gates mean:

```text
the AI does not decide alone
a human must confirm
the decision is logged
the action is traceable
```

---

## Safety positioning

ESPAndyAI EDGE should be described as:

```text
human-governed
auditable
permission-based
business-safe by design
```
