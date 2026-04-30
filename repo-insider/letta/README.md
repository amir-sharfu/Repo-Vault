# Letta (MemGPT) — Stateful Agents with Unlimited Memory

> **Repo:** [letta-ai/letta](https://github.com/letta-ai/letta)
> **Stars:** ![Stars](https://img.shields.io/github/stars/cpacker/MemGPT?style=flat-square) | **License:** Apache 2.0 | **Built by:** letta-ai (formerly cpacker/MemGPT)
> **Runs:** Locally via Python or self-hosted server — REST API included

---

## What is it?

Letta (formerly MemGPT) gives LLM agents an OS-inspired virtual memory system with three tiers: in-context memory (always present), recall storage (searchable conversation history), and archival storage (long-term facts). Agents control their own memory — deciding what to keep, recall, or archive — enabling effectively unlimited memory within a fixed context window.

---

## The Problem It Solves

| Fixed Context Window | Letta |
|---------------------|-------|
| Long conversations overflow the context window | Virtual memory paging moves info in/out of active context automatically |
| Agents forget what happened earlier in a session | Recall storage is searchable — any past exchange is retrievable |
| Long-term user facts get lost between sessions | Archival storage persists facts indefinitely |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Machine / Server"]
        Input([User Message]) --> Agent

        subgraph Agent["Letta Agent"]
            Core[In-Context Memory\nalways present]
            Recall[Recall Storage\nsearchable conversation history]
            Archive[Archival Storage\nlong-term facts]
            Core <-->|page in/out| Recall
            Core <-->|page in/out| Archive
            Agent -->|memory function calls| Core
        end

        Agent <-->|REST API| Apps([Your App\nor Other Agents])
    end

    style Agent fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style Core fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style Recall fill:#ede9fe,stroke:#8b5cf6,color:#1e1e1e
    style Archive fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style Input fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style Apps fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

The agent itself decides what to remember — it calls memory functions (like tool calls) to store, retrieve, and update its own memory. The agent server manages multiple persistent agents, each with their own state, tools, and memory tiers.

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| Three-tier virtual memory | In-context, recall, and archival memory — agent-controlled |
| Agent-managed memory | Agents call memory functions to manage their own state |
| Persistent agent server | Run multiple independent agents via REST API |
| Multi-agent messaging | Agents can send messages to each other |
| Self-improvement | Agents can rewrite their own core memory and persona |
| Human-in-the-loop | Edit any agent's memory directly via the UI |

---

## Real-World Use Cases

| Use Case | What Letta Adds |
|----------|----------------|
| Long-running personal assistant | Never forgets — recalls conversations from months ago |
| Multi-session research agent | Archives findings; picks up exactly where it left off |
| Customer service agent | Per-user memory ensures consistent, personalised service |
| Companion / tutoring app | Adapts over time as it learns about the user |

---

## When to Use It

**Good fit:**
- Applications where conversations extend over weeks or months
- Agents that must maintain a coherent, evolving understanding of a user or project
- Developers who want agents to actively manage their own memory

**Not the right tool:**
- Short single-session interactions (memory overhead isn't worth it)
- Latency-critical apps (memory operations add overhead)
