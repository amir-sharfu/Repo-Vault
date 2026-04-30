# Plandex — Terminal AI Coding Agent for Large Multi-File Tasks

> **Repo:** [plandex-ai/plandex](https://github.com/plandex-ai/plandex)
> **Stars:** ![Stars](https://img.shields.io/github/stars/plandex-ai/plandex?style=flat-square) | **License:** MIT | **Built by:** plandex-ai
> **Runs:** Locally as a CLI + self-hostable server

---

## What is it?

Plandex is a terminal-based AI coding agent purpose-built for large, multi-file tasks. It maintains a persistent plan, stages all file changes in a sandbox before applying them, and lets you review, reject, or roll back individual changes — so nothing touches your real codebase until you approve it.

---

## The Problem It Solves

| Standard AI Coding Tools | Plandex |
|--------------------------|---------|
| Lose context on large projects spanning many files | Persistent plan holds context across the entire task |
| Changes applied immediately — no preview | All diffs staged in a sandbox; nothing applied until approved |
| No rollback if the agent makes a bad edit | Full rollback of the entire plan or individual changes |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Local Machine"]
        You([You]) -->|task + context files| CLI

        subgraph Plandex["Plandex"]
            CLI[CLI Agent]
            Plan[Persistent Plan\nqueue of file changes]
            Sandbox[Sandbox\nstaged diffs]
            CLI --> Plan --> Sandbox
            Sandbox -->|approved| FS[Real Filesystem]
            Sandbox -->|rejected| Plan
        end

        CLI <-->|LLM calls| Server[Plandex Server\nself-hosted / cloud]
    end

    style Plandex fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style CLI fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style Plan fill:#ede9fe,stroke:#8b5cf6,color:#1e1e1e
    style Sandbox fill:#fef9c3,stroke:#f59e0b,stroke-width:2px,color:#1e1e1e
    style FS fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style You fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style Server fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

You load files and context explicitly. The LLM generates diffs that queue in the sandbox. You review each change, approve the whole plan, or roll back. Nothing touches your real files until you say so.

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| Persistent plan | Maintains a queue of file changes across the entire task |
| Sandbox staging | All diffs preview before touching the real filesystem |
| Explicit context | You control exactly what the agent sees (files, URLs, notes) |
| Rollback | Undo individual changes or the entire plan |
| Self-hostable server | Full control over data and model endpoints |
| Multi-model | OpenAI, Anthropic, open-source backends |

---

## Real-World Use Cases

| Task | Why Plandex |
|------|------------|
| Refactor across 20+ files | Persistent plan holds the full scope; review each change |
| Migrate a codebase to a new framework | Stage all diffs, approve file by file |
| Implement a large feature | Plan queues up the work; nothing applied until reviewed |

---

## When to Use It

**Good fit:**
- Large, multi-file tasks where context and correctness both matter
- Developers who want to review every AI change before it touches real code
- Teams needing a self-hosted coding agent with full data control

**Not the right tool:**
- Quick single-file edits (simpler tools are faster)
- Fully autonomous workflows where human review isn't needed
