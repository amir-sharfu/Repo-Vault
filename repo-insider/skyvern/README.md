# Skyvern — Vision-Based Browser Automation That Survives UI Changes

> **Repo:** [Skyvern-AI/skyvern](https://github.com/Skyvern-AI/skyvern)
> **Stars:** ![Stars](https://img.shields.io/github/stars/Skyvern-AI/skyvern?style=flat-square) | **License:** AGPL-3.0 | **Built by:** Skyvern-AI
> **Runs:** Self-hosted via Docker or Skyvern cloud

---

## What is it?

Skyvern automates browser workflows using computer vision and LLMs instead of CSS selectors. It looks at a screenshot, understands what's on the page, and takes the right action — just like a human would. This makes automations resilient: when a website's HTML changes, Skyvern's workflows keep working.

---

## The Problem It Solves

| Selector-Based Automation | Skyvern |
|--------------------------|---------|
| CSS/XPath selectors break when the site updates | Vision-based — reads the UI the same way a human does |
| Writing selectors requires HTML inspection for every element | Describe the action in plain language; Skyvern finds the element |
| Multi-page forms need complex state management | Workflow engine handles multi-step, multi-page tasks natively |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Machine / Cloud"]
        Task([Task Description]) --> Skyvern

        subgraph Skyvern["Skyvern Agent"]
            SS[Take Screenshot]
            LLM[LLM Plans Action\nfrom visual understanding]
            Exec[Execute via Playwright]
            SS --> LLM --> Exec --> SS
        end

        Skyvern --> Output([Task Complete\nor Result Data])
    end

    style Skyvern fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style SS fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style LLM fill:#ede9fe,stroke:#8b5cf6,color:#1e1e1e
    style Exec fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style Task fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style Output fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

Skyvern captures a screenshot, the LLM identifies interactive elements and plans the next action, Playwright executes it. Then another screenshot, next action — loop until complete. No selectors, no fragile element IDs.

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| Vision-first automation | No CSS selectors — reads UI visually like a human |
| LLM action planning | Plans each step from a live screenshot |
| Workflow engine | Chains multi-step, multi-page tasks with conditional logic |
| CAPTCHA handling | Resolves common CAPTCHAs during automation |
| REST API + Python SDK | Trigger workflows from your code or CI/CD |
| Self-hostable + cloud | Run locally or use Skyvern's managed service |

---

## Real-World Use Cases

| Task | Why Skyvern |
|------|------------|
| Fill and submit multi-page web forms | Handles any form structure without custom selectors |
| Extract data from a portal | Vision-based parsing survives layout changes |
| Automate procurement workflows | Works across vendor portals with different UIs |
| QA testing web UIs | Tests that don't break when the design changes |

---

## When to Use It

**Good fit:**
- Automating third-party websites you don't control (portals, SaaS tools)
- Workflows that break every time the target site updates
- Anything involving CAPTCHAs or dynamic, JS-heavy pages

**Not the right tool:**
- High-throughput scraping (vision inference is slower than selector-based)
- Sites with a well-documented API (use the API directly)
