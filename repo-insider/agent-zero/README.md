# Agent Zero — Transparent, Self-Organizing AI Agent Framework

> **Repo:** [agent0ai/agent-zero](https://github.com/agent0ai/agent-zero)
> **Stars:** ![Stars](https://img.shields.io/github/stars/frdel/agent-zero?style=flat-square) | **License:** Custom (source-available) | **Built by:** agent0ai
> **Runs:** Locally — real Linux environment as the primary action space

---

## What is it?

Agent Zero is a minimal, transparent AI agent framework where the Linux terminal is the primary tool. Instead of pre-built integrations, the agent reasons about what tools to create and use, spawns sub-agents for delegation, and learns from past tasks by persisting notes.

---

## The Problem It Solves

| Opaque Agent Frameworks | Agent Zero |
|------------------------|-----------|
| Fixed tool sets limit what the agent can do | Agent creates its own tools dynamically via the terminal |
| Black-box execution — hard to inspect or modify | Fully transparent architecture — inspect every prompt and decision |
| No learning between sessions | Persistent notes let the agent improve with each task |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Local Machine"]
        You([You]) -->|task| AgentZero

        subgraph AgentZero["Agent Zero"]
            Main[Main Agent]
            Main -->|delegate| Sub1[Sub-Agent A]
            Main -->|delegate| Sub2[Sub-Agent B]
            Main & Sub1 & Sub2 --> Linux[Linux Terminal\n+ Python + Browser]
            Main & Sub1 & Sub2 <-->|store/recall| Memory[Persistent Notes\n+ Memory]
            Main --> Tools[Self-created Tools\nrun via terminal]
        end

        AgentZero --> Result([Task Complete])
    end

    style AgentZero fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style Main fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style Sub1 fill:#ede9fe,stroke:#8b5cf6,color:#1e1e1e
    style Sub2 fill:#ede9fe,stroke:#8b5cf6,color:#1e1e1e
    style Linux fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style Memory fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style Tools fill:#ffc9c9,stroke:#ef4444,color:#1e1e1e
    style You fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style Result fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

The agent has access to a real Linux terminal, Python interpreter, and browser. It can write scripts, install packages, and run anything. Sub-agents can be spawned for parallel or delegated work. Notes persist across sessions so the agent learns from past runs.

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| Linux terminal as primary tool | Agent writes and runs its own scripts — no fixed tool list |
| Hierarchical sub-agents | Spawn child agents to delegate tasks; parent collects results |
| Persistent memory | Notes and learned instructions survive across sessions |
| Dynamic tool creation | Agent builds the tool it needs, then uses it |
| Web UI + CLI | Control and monitor the agent either way |
| Multi-provider | OpenAI, Anthropic, Ollama, custom endpoints |

---

## Real-World Use Cases

| Task | What Agent Zero Does |
|------|---------------------|
| System administration | Writes and runs bash scripts to automate server tasks |
| Research automation | Browses web, extracts data, synthesises findings |
| Multi-step data processing | Delegates subtasks to sub-agents in parallel |
| Personal AI assistant | Learns your preferences via persistent notes |

---

## When to Use It

**Good fit:**
- Power users who want maximum agent flexibility and transparency
- Tasks requiring dynamic tool creation (no pre-built integration exists)
- Research into minimal, self-organising agent architectures

**Not the right tool:**
- Production environments where arbitrary code execution is a security risk
- Users who need a polished UI and pre-built integrations out of the box
