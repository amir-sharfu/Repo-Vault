# Atomic Agents — Modular AI Agent Pipelines Built Like Software

> **Repo:** [BrainBlend-AI/atomic-agents](https://github.com/BrainBlend-AI/atomic-agents)
> **Stars:** ![Stars](https://img.shields.io/github/stars/BrainBlend-AI/atomic-agents?style=flat-square) | **License:** MIT | **Built by:** BrainBlend-AI
> **Runs:** Locally via Python — multi-provider LLM support

---

## What is it?

Atomic Agents treats every component in an AI pipeline as a small, single-purpose, testable unit — just like functions in clean software. Built on Instructor and Pydantic, every agent has a typed input/output schema. Components snap together like LEGO blocks, making pipelines as maintainable as regular code.

---

## The Problem It Solves

| Monolithic Agent Frameworks | Atomic Agents |
|-----------------------------|--------------|
| Black-box agents are hard to test and debug | Each component is a typed, testable unit |
| Changing one part breaks the whole pipeline | Atomic components are independently replaceable |
| No contract between agent inputs and outputs | Pydantic schemas enforce types at every boundary |
| Custom tool integration requires boilerplate | Atomic Forge registry — download community tools via CLI |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Local Machine"]
        Input([Typed Input]) --> CP

        subgraph Pipeline["Atomic Agent Pipeline"]
            CP[Context Provider\nfeeds data]
            A1[Agent 1\ntransforms data]
            T1[Tool\nexecutes side effect]
            A2[Agent 2\nproduces output]
            CP --> A1 --> T1 --> A2
        end

        A2 --> Output([Typed Output])
    end

    style Pipeline fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style CP fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style A1 fill:#ede9fe,stroke:#8b5cf6,color:#1e1e1e
    style T1 fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style A2 fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style Input fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style Output fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

Each agent is defined with a Pydantic input/output schema. The output of one agent becomes the validated input of the next. Context providers inject external data. Tools execute real-world actions. The Atomic Forge CLI lets you download pre-built community tools.

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| Atomic component design | Every unit is single-purpose and independently testable |
| Pydantic + Instructor | Typed, validated I/O at every pipeline boundary |
| Context providers | First-class abstraction for feeding external data to agents |
| Atomic Forge CLI | Download pre-built tools from the community registry |
| Multi-provider support | OpenAI, Anthropic, Groq, Gemini |
| Predictable outputs | Consistent, structured results — no freeform JSON surprises |

---

## Real-World Use Cases

| Task | Why Atomic Agents |
|------|------------------|
| RAG pipeline | Context provider fetches docs; agent answers with citations |
| Data extraction | Agent parses raw text → typed Pydantic output every time |
| Multi-step research | Chain agents: search → summarise → structure → report |

---

## When to Use It

**Good fit:**
- Teams that want AI pipelines as maintainable as regular software
- Projects where reliable typed outputs are critical
- Anyone who finds larger frameworks too opaque to debug

**Not the right tool:**
- Rapid throwaway prototypes (typed schemas add setup time)
- Fully autonomous agents that must self-direct without a defined pipeline
