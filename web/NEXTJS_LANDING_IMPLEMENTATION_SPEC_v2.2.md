# Next.js Landing Implementation Spec v2.2

## Goal

Build a public landing page for ESPAndyAI EDGE that supports:

```text
pilot inquiries
developer kit waitlist
investor requests
partner conversations
```

---

## Recommended route

```text
/espandyai-edge
```

---

## Required sections

```text
Hero
Problem
Product Stack
How It Works
Use Cases
Pilot Offer
Developer Kit Waitlist
Investor CTA
FAQ
Footer
```

---

## Component structure

```text
app/espandyai-edge/page.tsx
components/edge/Hero.tsx
components/edge/Problem.tsx
components/edge/ProductStack.tsx
components/edge/HowItWorks.tsx
components/edge/UseCases.tsx
components/edge/PilotOffer.tsx
components/edge/LeadForms.tsx
components/edge/FAQ.tsx
components/edge/Footer.tsx
```

---

## Visual style

```text
clean white background
charcoal text
red/gold accent
rounded cards
simple technical diagrams
device render placeholder
strong CTA buttons
```

---

## Hero copy

Headline:

```text
Give your AI a body.
```

Subheadline:

```text
ESPAndyAI EDGE connects small physical voice and sensor nodes to AndyAI Director — a governed AI brain for workflows, documents, devices, and human-approved automation.
```

CTA:

```text
Request a Pilot
Join Dev Kit Waitlist
Request Investor Brief
```

---

## Form handling

Initial implementation can use:

```text
static form → email
Formspree/Tally/Notion form
or simple API route
```

Production implementation should store leads in:

```text
CRM table
Notion database
Airtable
Supabase
or custom database
```

---

## First deployment target

```text
Vercel preview deployment
```

The first page must be clear before it is complex.
