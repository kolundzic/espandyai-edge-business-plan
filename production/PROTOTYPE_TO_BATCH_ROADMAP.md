# Prototype-to-Batch Roadmap  
## ESPAndyAI EDGE / Director Node

## Production Philosophy

Hardware must be scaled slowly and deliberately.

The correct order is:

```text
1 prototype -> 5 units -> 20 units -> 50 units -> 200 units -> 1,000 units
```

Do not jump directly to mass production.

## Stage 1 — Single Prototype

### Purpose

Prove that the system works end-to-end.

### Quantity

```text
1 unit
```

### Build style

- dev board
- jumper wires
- simple modules
- 3D printed or open enclosure
- manual flashing

### Required proof

- microphone input
- Director event
- response output
- local log
- basic action

## Stage 2 — Engineering Mini-Batch

### Purpose

Prove repeatability.

### Quantity

```text
5-10 units
```

### Build style

- same selected ESP32-S3 board
- consistent mic/speaker modules
- simple enclosure
- documented wiring
- basic setup guide

### Required proof

- multiple devices can be assembled
- setup process is repeatable
- failure points are documented
- demo can be repeated by another person

## Stage 3 — Developer Batch

### Purpose

Validate early market interest.

### Quantity

```text
20-50 units
```

### Build style

- assembled dev kit
- stable firmware version
- printed or online manual
- GitHub docs
- support process

### Required proof

- early users can set it up
- price point is acceptable
- support burden is understood
- use cases are clearer after feedback

## Stage 4 — Pilot Commercial Batch

### Purpose

Validate business deployments.

### Quantity

```text
100-300 units
```

### Build style

- more robust enclosure
- consistent components
- provisioning process
- device registry
- SaaS connection
- pilot support

### Required proof

- customers use the device in real environments
- SaaS value is visible
- device cost and support cost are measurable
- commercial offer is repeatable

## Stage 5 — First Commercial Series

### Purpose

Move toward market-ready product.

### Quantity

```text
500-1,000 units
```

### Build style

- optimized PCB planning
- pre-certified modules
- stronger enclosure
- packaging
- warranty/support model
- certification planning or testing

### Required proof

- gross margin is viable
- supply chain is stable
- return/support rate is acceptable
- recurring revenue is growing

## Key Manufacturing Rules

1. Use pre-certified modules early.
2. Avoid custom RF design in early versions.
3. Keep the enclosure simple.
4. Choose one primary board first.
5. Measure support cost before scaling.
6. Do not promise compatibility with all ESP32 boards.
7. Maintain a compatibility list.
8. Keep firmware updates controlled.
9. Add OTA only after baseline stability.
10. Document every batch.

## Batch Decision Gates

### Move from 1 to 5 units only if:

```text
end-to-end demo works
```

### Move from 5 to 20 units only if:

```text
assembly is repeatable
```

### Move from 20 to 50 units only if:

```text
external users understand setup
```

### Move from 50 to 200 units only if:

```text
pilot demand exists
```

### Move from 200 to 1,000 units only if:

```text
unit economics and support load are proven
```

## Canonical Warning

```text
Hardware does not forgive hype.
Scale only after evidence.
```
