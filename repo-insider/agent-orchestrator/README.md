# Agent Orchestrator — Parallel AI Coding Agent Fleet Manager

> **Repo:** [ComposioHQ/agent-orchestrator](https://github.com/ComposioHQ/agent-orchestrator)
> **Stars:** ![Stars](https://img.shields.io/github/stars/ComposioHQ/agent-orchestrator?style=flat-square) | **License:** MIT | **Built by:** ComposioHQ
> **Runs:** Locally — Node.js server + React dashboard

---

## What is it?

Agent Orchestrator runs fleets of parallel AI coding agents — each in its own isolated git worktree and branch — that autonomously fix CI failures, respond to review comments, and open PRs. A unified dashboard lets you supervise the entire fleet from one view.

---

## The Problem It Solves

| Single Coding Agent | Agent Orchestrator |
|--------------------|-------------------|
| One task at a time — slow for large backlogs | Parallelise work across many agents simultaneously |
| Agent fails CI — you manually kick off a retry | Agents auto-detect CI failures and fix them autonomously |
| No visibility into what each agent is doing | Real-time dashboard across the entire fleet |
| Agents share a codebase — risk of conflicts | Each agent gets its own git worktree |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Local Machine"]
        You([You]) -->|tasks / issues| Orch

        subgraph Orch["Agent Orchestrator"]
            Planner[Task Planner]
            Planner --> A1[Agent 1\nworktree + branch]
            Planner --> A2[Agent 2\nworktree + branch]
            Planner --> A3[Agent 3\nworktree + branch]
            A1 & A2 & A3 --> CI[CI Monitor\nauto-fix loop]
            CI --> Dashboard[Dashboard]
        end

        Orch -->|PRs| GitHub[GitHub]
    end

    style Orch fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style Planner fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style A1 fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style A2 fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style A3 fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style CI fill:#ffc9c9,stroke:#ef4444,color:#1e1e1e
    style Dashboard fill:#ede9fe,stroke:#8b5cf6,color:#1e1e1e
    style You fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style GitHub fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

Tasks flow into the planner, which spawns agents (Claude Code, Codex, Aider) into isolated git worktrees. Each agent works independently, monitors CI output, and retries on failure. The dashboard gives live status across all agents.

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| Parallel agent fleet | Spawn as many agents as needed — each isolated in its own worktree |
| Autonomous CI fix loop | Agents detect CI failures and self-correct without human prompting |
| Multi-agent support | Works with Claude Code, OpenAI Codex, Aider — agent-agnostic |
| GitHub + Linear integration | Pull tasks from issues, push results as PRs |
| tmux + Docker runtimes | Run agents in tmux sessions or containerised environments |
| Unified dashboard | Real-time view of every agent's status, output, and branch |

---

## Real-World Use Cases

| Scenario | What You Do | What You Get |
|----------|-------------|--------------|
| Backlog sprint | Feed 10 GitHub issues | 10 agents work in parallel, open 10 PRs |
| CI flakiness | Point at failing CI runs | Agents diagnose and fix each failure autonomously |
| Code review follow-up | Pass review comments | Agents address each comment on its own branch |

---

## When to Use It

**Good fit:**
- Engineering teams with a backlog of well-defined, automatable tasks
- CI/CD pipelines where failures need fast autonomous remediation
- Any workflow where parallelising coding agents saves significant time

**Not the right tool:**
- Tasks requiring deep architectural judgment — agents work best on mechanical, well-scoped work
- Single-task sessions where one agent is sufficient
