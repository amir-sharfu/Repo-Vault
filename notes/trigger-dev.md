# Trigger.dev — Beginner's Guide

> Site: [trigger.dev](https://trigger.dev/)  
> Category: Developer Resources  
> Added: 2026-04-06

---

## What is Trigger.dev? (1 Sentence)

Trigger.dev is the **infrastructure layer for long-running background jobs** — write async tasks as plain functions, deploy them, and they run to completion without timeouts, with auto-retries and a full dashboard.

---

## The Analogy — Restaurant Kitchen

Your app is like a restaurant kitchen:

| Task | Time | Handled by |
|------|------|------------|
| Burger order, salad plating | Seconds | Regular server (Vercel/Lambda) |
| Slow-cooking a roast, making stock | 30+ minutes | **Back kitchen = Trigger.dev** |

The cashier can't wait 30 minutes — they'd block the whole line. Trigger.dev is the **back kitchen** that handles the slow, heavy work independently.

---

## Without vs With Trigger.dev

| | Without Trigger.dev | With Trigger.dev |
|---|---|---|
| AI agent on Vercel/Lambda | Times out after 15 min, lost progress | Runs to full completion |
| Failure handling | Manual retry logic | Auto-retry with backoff built in |
| Infrastructure | Build Redis queue + workers yourself (months) | Just write a function (30 min setup) |
| Observability | None by default | Dashboard: every run, error, log |

---

## How It Works

1. Write your long-running task as a single `async` function
2. Deploy it to Trigger.dev
3. Trigger it via webhook, schedule, or event
4. It runs to completion — no timeout
5. Auto-retries on failure
6. Monitor everything in the dashboard

---

## Real-World Use Cases

| Use Case | What It Does |
|----------|-------------|
| **Document processing** | Upload 500-page PDF → extract text → analyze with Claude → email results |
| **Data pipelines** | Sync millions of records between APIs without losing progress mid-sync |
| **AI research agents** | Multi-step reasoning with 10+ LLM calls, web searches, file processing — no timeout |
| **Email/SMS campaigns** | Send 100k messages with smart delays and engagement tracking |
| **Webhook retry logic** | When an external API fails, auto-retry with exponential backoff |

---

## Why It Matters for AI & Claude Code

Running Claude agents **locally** or on a Lambda that times out is a dead end in production. Trigger.dev is where those agents **live in production**:

- Agent task runs on Trigger's infrastructure **indefinitely**
- **Retries failures** automatically
- **Streams results** back to your frontend in real-time
- No infrastructure to manage yourself

---

## Key Features

- No timeouts — tasks run as long as needed
- Auto-retry with configurable backoff
- Cron/scheduled jobs
- Event-driven triggers (webhooks, queues)
- Real-time logs and run history dashboard
- TypeScript/Node.js native
- Self-hostable or cloud-hosted
