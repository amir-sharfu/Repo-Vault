# VoltAgent — TypeScript AI Agent Framework with Built-in Ops Console

> **Repo:** [VoltAgent/voltagent](https://github.com/VoltAgent/voltagent)
> **Stars:** ![Stars](https://img.shields.io/github/stars/VoltAgent/voltagent?style=flat-square) | **License:** MIT | **Built by:** VoltAgent
> **Runs:** Locally via Node.js + optional VoltOps cloud console

---

## What is it?

VoltAgent is an end-to-end TypeScript AI agent engineering platform. The open-source `@voltagent/core` package lets you build typed, multi-agent systems with tools, memory, and workflows. The VoltOps Console (cloud or self-hosted) adds observability, evals, guardrails, and prompt management so you can go from prototype to production in one platform.

---

## The Problem It Solves

| JavaScript Agent Development | VoltAgent |
|-----------------------------|-----------|
| No type-safe agent framework for TypeScript teams | Fully typed agents, tools, and memory in TypeScript |
| Observability requires stitching together separate tools | VoltOps Console built-in — traces, evals, guardrails in one place |
| Switching LLM providers breaks the whole stack | Provider-agnostic — swap OpenAI/Anthropic/Google by config |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Machine / Cloud"]
        You([Your App]) --> Core

        subgraph VoltAgent["VoltAgent"]
            Core[@voltagent/core\nTypescript framework]
            Supervisor[Supervisor Agent\ntask routing]
            SubAgents[Sub-Agents\nspecialist roles]
            Tools[MCP Tools\nZod-typed]
            Memory[Memory Layer]
            Core --> Supervisor --> SubAgents
            SubAgents --> Tools & Memory
        end

        VoltAgent --> Ops[VoltOps Console\ntracing · evals · guardrails]
        VoltAgent --> Output([Agent Response])
    end

    style VoltAgent fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style Core fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style Supervisor fill:#ede9fe,stroke:#8b5cf6,color:#1e1e1e
    style SubAgents fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style Tools fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style Memory fill:#ffc9c9,stroke:#ef4444,color:#1e1e1e
    style Ops fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style You fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

Define agents with typed roles, tools, and memory in TypeScript. A supervisor routes tasks to specialist sub-agents. The workflow engine handles multi-step automations. Connect VoltOps for full observability and production ops.

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| TypeScript-first | Typed agents, tools, and memory — full IDE support |
| Supervisor + sub-agents | Hierarchical orchestration for multi-agent workflows |
| Declarative workflows | Multi-step automations without manual state management |
| VoltOps Console | Tracing, evals, guardrails, and prompt management |
| MCP-native tools | Zod-typed tool schemas for any MCP-compatible integration |
| LLM-agnostic | Swap OpenAI, Anthropic, Google with a single config change |

---

## Real-World Use Cases

| Task | VoltAgent Approach |
|------|-------------------|
| Customer service agent | Supervisor routes to billing/tech/general sub-agents |
| Automated coding workflow | Orchestrate plan → build → test sub-agents |
| Research pipeline | Parallel sub-agents gather sources; supervisor synthesises |
| Production AI feature | Deploy with VoltOps for full observability from day one |

---

## When to Use It

**Good fit:**
- TypeScript/Node.js teams building production AI agents
- Projects needing both a solid framework and operational tooling
- Multi-agent systems where typed contracts between agents matter

**Not the right tool:**
- Python-first teams (VoltAgent is TypeScript)
- Throwaway prototypes where a framework is overkill
