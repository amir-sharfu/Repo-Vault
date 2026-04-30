# Paperclip — Autonomous AI-Agent Business Orchestration Platform

> **Repo:** [paperclipai/paperclip](https://github.com/paperclipai/paperclip)
> **Stars:** ![Stars](https://img.shields.io/github/stars/paperclipai/paperclip?style=flat-square) | **License:** MIT | **Built by:** Agency Enterprise (paperclipai)
> **Runs:** Locally via Node.js server + React UI, or self-hosted

---

## What is it?

Paperclip is an open-source platform for orchestrating fleets of AI agents toward business goals. You define an org chart of agents — each with a role, budget, and goals — and a unified dashboard supervises their work, spend, and output across tasks.

---

## The Problem It Solves

| Without Paperclip | With Paperclip |
|-------------------|----------------|
| Managing multiple agents is chaotic — no unified view | One dashboard for all agents, goals, and spend |
| No cost controls on agent API usage | Per-agent budget enforcement |
| Coordinating handoffs between agents is manual | Org chart structure handles task routing automatically |
| Hard to know what any agent is doing | Real-time activity and spend monitoring |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Infrastructure"]
        You([You]) -->|define org chart + goals| Platform

        subgraph Platform["Paperclip Platform"]
            Dashboard[Dashboard\nReact UI]
            Dashboard --> Orch[Orchestrator]
            Orch --> A1[Agent: CEO]
            Orch --> A2[Agent: Engineer]
            Orch --> A3[Agent: Researcher]
            A1 & A2 & A3 --> WT[Git Worktrees\nisolated per agent]
            A1 & A2 & A3 --> Budget[Budget Tracker]
        end

        Platform -->|PRs + deliverables| Output([GitHub / Output])
    end

    style Platform fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style Dashboard fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style Orch fill:#ede9fe,stroke:#8b5cf6,color:#1e1e1e
    style A1 fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style A2 fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style A3 fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style WT fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style Budget fill:#ffc9c9,stroke:#ef4444,color:#1e1e1e
    style You fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style Output fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

You build an org chart — CEO agent, engineering agents, research agents. Goals flow down the hierarchy. Each agent works in its own git worktree, and all work surfaces in the dashboard alongside cost tracking.

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| Agent org charts | Assign roles, responsibilities, and reporting structure to agents |
| Goal assignment | Top-level goals cascade down to sub-agents automatically |
| Cost tracking | Per-agent spend dashboard with budget caps |
| Git worktree provisioning | Each agent gets an isolated branch and working directory |
| Plugin system | Extend agents with custom tools and integrations |
| MCP tool exposure | Agents can call MCP tools as part of their work |

---

## Real-World Use Cases

| Scenario | What You Set Up | What You Get |
|----------|----------------|--------------|
| Autonomous software company | CEO + engineer + QA agents | End-to-end feature development with PRs |
| Research automation | Researcher + writer + reviewer | Reports drafted, reviewed, and published |
| Content operation | Planner + writers + editor | Scheduled content pipeline with cost cap |

---

## When to Use It

**Good fit:**
- Coordinating multiple AI agents toward a shared business objective
- Teams wanting visibility and cost control across agent fleets
- Autonomous workflows where agents hand off work to each other

**Not the right tool:**
- Single-agent tasks (overkill)
- Real-time interactive workflows where human-in-the-loop is required at every step
