# Future AGI — LLM Evaluation & Observability Platform

> **Repo:** [future-agi/future-agi](https://github.com/future-agi/future-agi)
> **Stars:** ![Stars](https://img.shields.io/github/stars/future-agi/future-agi?style=flat-square) | **License:** Apache 2.0 | **Built by:** FutureAGI Inc.
> **Runs:** Self-hosted via Docker/Kubernetes, or cloud-managed

---

## What is it?

Future AGI is an open-source platform for evaluating, tracing, and continuously improving LLM applications and AI agents. It wraps your LLM calls with observability, runs 50+ automated eval metrics, simulates adversarial conversations, and enforces guardrails — all in one self-hostable platform.

---

## The Problem It Solves

| Without Future AGI | With Future AGI |
|--------------------|-----------------|
| LLM apps hallucinate silently — no systematic detection | 50+ automated eval metrics catch issues every run |
| Agent quality degrades over time with no alerts | Continuous evaluation with regression tracking |
| No visibility into what agents actually did | Full trace of every LLM call, tool use, and decision |
| Testing against adversarial inputs is manual | Built-in simulation of multi-turn adversarial conversations |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Infrastructure"]
        App([Your LLM App\nor Agent]) -->|wrapped calls| Gateway

        subgraph Platform["Future AGI Platform"]
            Gateway[LLM Gateway\n+ Tracing]
            Gateway --> Eval[Eval Engine\n50+ metrics]
            Gateway --> Sim[Simulation\nadversarial personas]
            Gateway --> Guard[Guardrails\nPII · toxicity · etc]
            Eval --> DS[Datasets\n+ Versioning]
        end

        Platform -->|results + alerts| Dashboard([Dashboard\n+ SDK])
    end

    style Platform fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style Gateway fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style Eval fill:#ede9fe,stroke:#8b5cf6,color:#1e1e1e
    style Sim fill:#fef9c3,stroke:#f59e0b,color:#1e1e1e
    style Guard fill:#ffc9c9,stroke:#ef4444,color:#1e1e1e
    style DS fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style App fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style Dashboard fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

You instrument your LLM calls with the SDK. Every call flows through the gateway, gets traced, evaluated against your chosen metrics, and checked by guardrails. Results land in the dashboard with trend tracking across versions.

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| Tracing | Full call-level visibility — inputs, outputs, latency, cost, tool use |
| 50+ eval metrics | Groundedness, relevance, faithfulness, PII detection, toxicity, and more |
| Simulation | Spin up adversarial AI personas to stress-test agents in multi-turn conversations |
| Guardrails | 18 built-in inline checks — block bad outputs before they reach users |
| Datasets | Version and manage eval datasets alongside your app code |
| Python + TS SDKs | Drop-in instrumentation for existing LLM apps |

---

## Real-World Use Cases

| Scenario | What You Get |
|----------|--------------|
| RAG pipeline quality check | Groundedness and faithfulness scores per retrieval |
| Agent regression testing | Catch when a model update breaks agent behaviour |
| Compliance / PII safety | Block PII from ever leaving the system |
| Red-teaming | Adversarial simulations before production launch |

---

## When to Use It

**Good fit:**
- Teams shipping LLM apps who need systematic quality control
- Regulated industries requiring PII and toxicity guardrails
- Anyone doing A/B testing across model versions

**Not the right tool:**
- One-off prototypes not heading to production
- Simple single-turn chatbots with no safety requirements
