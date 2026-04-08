# OpenRouter — Beginner's Guide

> Site: [openrouter.ai](https://openrouter.ai/)  
> Category: AI & Productivity  
> Added: 2026-04-09

---

## What is OpenRouter? (1 Sentence)

OpenRouter is a **unified API for 300+ AI models** — one API key, one endpoint, access to OpenAI, Anthropic, Google, Mistral, and hundreds more, with smart routing, fallbacks, and centralized billing.

---

## The Problem It Solves

Without OpenRouter, using multiple AI providers means:

| Provider | Separate API Key | Separate Billing | Different Schema |
|----------|-----------------|-----------------|-----------------|
| OpenAI | Yes | Yes | Yes |
| Anthropic | Yes | Yes | Yes |
| Google | Yes | Yes | Yes |
| Mistral | Yes | Yes | Yes |
| ... 20+ more | Yes | Yes | Yes |

**With OpenRouter**: One API key. One endpoint. One bill.

---

## How It Works

OpenRouter's API is nearly identical to the OpenAI Chat API — so if you already know that, you already know OpenRouter:

```
POST https://openrouter.ai/api/v1/chat/completions

{
  "model": "anthropic/claude-3-5-sonnet",  // or any of 300+ models
  "messages": [...]
}
```

Switch models by changing one string — no new auth, no new SDK.

---

## 3 Routing Modes

| Mode | How It Works | Best For |
|------|-------------|----------|
| **Manual** | You specify exactly which model to use | Full control |
| **Auto-routing** | OpenRouter picks the optimal model by performance, cost, or speed | Cost optimization |
| **Fallback** | If primary model fails, automatically tries secondary | Reliability |

---

## Key Features

- **300+ models** — OpenAI, Anthropic, Google, Mistral, Meta, and more
- **Free tier** — `openrouter/free` randomly selects from available free models
- **Normalized schema** — same request/response format across all providers
- **Centralized billing** — one dashboard for all model usage and costs
- **Model comparison** — benchmark cost, speed, and quality side by side
- **Usage tracking** — per-model analytics across your apps

---

## By the Numbers

- **250,000+** apps using OpenRouter
- **4.2 million+** users globally

---

## Why It Matters for AI Development

When building multi-model workflows (e.g., Claude for reasoning, a fast cheap model for classification, a vision model for images), OpenRouter lets you wire them all together without juggling separate keys, SDKs, and billing accounts. Swap models in one line of code.
