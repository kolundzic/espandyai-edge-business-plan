# Commercial Series Plan

## Do Not Start With Mass Production

Hardware should be scaled gradually.

## Batch Strategy

```text
1 unit: proof of concept
5–10 units: engineering prototype
20–50 units: dev kit batch
100–300 units: pilot commercial batch
500–1,000 units: first commercial series
5,000+ units: scale
```

## Batch 1 — 1 Unit

Goal:

```text
prove that the system works
```

## Batch 2 — 5–10 Units

Goal:

```text
prove repeatable build and demo readiness
```

## Batch 3 — 20–50 Units

Goal:

```text
developer and pilot validation
```

## Batch 4 — 100–300 Units

Goal:

```text
small commercial pilot scale
```

## Batch 5 — 500–1,000 Units

Goal:

```text
first real commercial series
```

## Certification Strategy

Early development should use pre-certified ESP32 modules and avoid custom RF designs. Commercial batches should plan FCC/CE pre-testing before large-scale production.

## Support Strategy

Every shipped device should have:

```text
device ID
firmware version
setup guide
diagnostic command
known compatibility list
support channel
reset/recovery procedure
```

## Quality Control

Minimum QC checklist:

```text
power test
Wi-Fi connection test
microphone test
speaker test
SD card log test
button test
Director API test
enclosure inspection
```
