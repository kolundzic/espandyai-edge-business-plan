# Supplier and BOM Strategy v1.6

## Purpose

This document defines procurement strategy for moving from prototype to small batches.

BOM means **Bill of Materials** — the list of parts needed to build the device.

Prizemno: spisak svega što kupujemo da napravimo uređaj.

---

## Procurement principles

```text
start with available modules
avoid custom RF design early
use ESP32-S3-class board
keep supplier alternatives
test audio quality early
do not freeze enclosure before user testing
```

---

## Initial BOM categories

```text
ESP32-S3 development board
I2S microphone
I2S amplifier
speaker
microSD module
microSD card
OLED display
buttons
battery/power module
USB-C cable
wires/connectors
case/enclosure
packaging
```

---

## Supplier risk

Risks:

```text
part availability changes
cheap microphones perform badly
speaker volume insufficient
battery module unreliable
board pinout differences
shipping delays
```

Mitigation:

```text
approve 2 alternatives per critical part
test audio components before batch order
avoid locking one obscure board
document exact SKU per prototype
```

---

## Batch procurement ladder

### 5 units

Buy retail/dev modules.

### 20 units

Buy from reliable electronics distributors or proven marketplace sellers.

### 50 units

Standardize parts and packaging.

### 200 units

Negotiate batch pricing and assembly options.

### 1,000 units

Consider custom PCB, assembly partner, certification plan, and packaging supply chain.

---

## Procurement checklist

```text
part name
supplier
unit price
minimum order quantity
lead time
alternative supplier
tested status
batch approved yes/no
```
