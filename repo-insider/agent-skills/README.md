# agent-skills — Production Engineering Lifecycle Skills for AI Coding Agents

> **Repo:** [addyosmani/agent-skills](https://github.com/addyosmani/agent-skills)
> **Stars:** ![Stars](https://img.shields.io/github/stars/addyosmani/agent-skills?style=flat-square) | **License:** MIT | **Built by:** Addy Osmani (Google Chrome)
> **Runs:** Inside Claude Code, Codex, Cursor, Windsurf

---

## What is it?

agent-skills is a Claude Code plugin by Addy Osmani (Google Chrome DevRel) that installs 7 slash commands mapping to the full software development lifecycle — `/spec`, `/plan`, `/build`, `/test`, `/review`, `/code-simplify`, `/ship`. Skills also activate automatically based on context, encoding senior engineering discipline into every agent session.

---

## The Problem It Solves

| Agents Without Lifecycle Skills | agent-skills |
|---------------------------------|-------------|
| Agents jump straight to coding without a spec or plan | `/spec` and `/plan` enforce deliberate design before implementation |
| No consistent software engineering discipline across sessions | Same best practices activated on every task, automatically |
| Test-writing and reviews happen ad-hoc or not at all | `/test` and `/review` are first-class steps in the workflow |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Machine — Claude Code"]
        You([Your Task]) --> Router

        subgraph Skills["agent-skills Plugin"]
            Router[Context Router\nauto-activates skills]
            Spec[/spec\nrequirements first]
            Plan[/plan\nbreakdown before build]
            Build[/build\natomic implementation]
            Test[/test\ntest as proof]
            Review[/review\ncode quality gate]
            Ship[/ship\ndelivery checklist]
        end

        Router --> Spec --> Plan --> Build --> Test --> Review --> Ship
        Ship --> Output([Shipped Feature])
    end

    style Skills fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style Router fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style Spec fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style Plan fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style Build fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style Test fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style Review fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style Ship fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style You fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style Output fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

Install via the Claude Code marketplace. Each skill activates via slash command or automatically when the agent detects the relevant context (building an API triggers API design best practices, building UI triggers frontend engineering practices).

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| 7 lifecycle slash commands | `/spec` `/plan` `/build` `/test` `/review` `/code-simplify` `/ship` |
| Context-aware activation | Skills auto-trigger based on what the agent is working on |
| Senior engineering patterns | Spec-first, atomic tasks, test-as-proof, incremental delivery |
| Multi-tool compatible | Claude Code, Codex, Cursor, Windsurf, Antigravity |
| One-command install | Claude Code marketplace |
| By Addy Osmani | Author of "Learning Patterns", Google Chrome DevRel lead |

---

## Real-World Use Cases

| Task | Which Skill Activates |
|------|----------------------|
| New feature request | `/spec` → clarify requirements; `/plan` → break into tasks |
| Writing implementation | `/build` → atomic commits, no scope creep |
| After writing code | `/test` → tests as proof of correctness |
| Before merging | `/review` → structured quality gate |
| Preparing a release | `/ship` → delivery checklist |

---

## When to Use It

**Good fit:**
- Developers who want consistent senior-engineering discipline in every Claude Code session
- Teams establishing AI-assisted workflows with clear quality gates
- Anyone shipping features with Claude Code who wants spec-first habits baked in

**Not the right tool:**
- Quick throwaway scripts where full lifecycle overhead isn't worth it
- Non-Claude Code environments (though Codex/Cursor are also supported)
