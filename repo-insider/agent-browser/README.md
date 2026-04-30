# agent-browser — Native Rust CLI Browser for AI Agents

> **Repo:** [vercel-labs/agent-browser](https://github.com/vercel-labs/agent-browser)
> **Stars:** ![Stars](https://img.shields.io/github/stars/vercel-labs/agent-browser?style=flat-square) | **License:** Apache 2.0 | **Built by:** Vercel Labs
> **Runs:** Locally — macOS, Linux, Windows; single native binary

---

## What is it?

agent-browser is a native Rust CLI that wraps Chrome for Testing as a headless browser designed specifically for AI agents. It is a single binary with zero Node.js overhead — agents call it directly from the shell with navigate, screenshot, click, and extract commands.

---

## The Problem It Solves

| Node.js Browser Automation | agent-browser |
|---------------------------|--------------|
| Requires Node.js runtime and Playwright/Puppeteer setup | Single Rust binary — install and run |
| Process startup adds latency to agentic shell sessions | Native binary with minimal overhead |
| Agents need a CLI-native browser for shell command sequences | Purpose-built for terminal-first agentic workflows |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Local Machine"]
        Agent([AI Agent\nshell commands]) -->|subcommands| CLI

        subgraph CLI["agent-browser (Rust)"]
            Router[Command Router]
            Router --> Nav[navigate]
            Router --> SS[screenshot]
            Router --> Click[click]
            Router --> Extract[extract]
            Chrome[Chrome for Testing]
            Nav & SS & Click & Extract --> Chrome
        end

        Chrome --> Web[Target Website]
        CLI --> Output([Output / Screenshot])
    end

    style CLI fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style Router fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style Nav fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style SS fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style Click fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style Extract fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style Chrome fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style Agent fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style Output fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

The agent calls `agent-browser navigate URL`, `agent-browser screenshot`, or `agent-browser extract` directly from the shell. Chrome for Testing is downloaded on first run. No Node.js, no driver setup.

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| Native Rust binary | No Node.js runtime — fast, minimal, single file |
| CLI-first design | Shell commands for navigate, screenshot, click, extract |
| Chrome for Testing | Consistent, versioned Chrome engine bundled automatically |
| Cross-platform | macOS, Linux, Windows |
| npm, Homebrew, Cargo | Multiple install methods |
| Official Vercel Labs | Maintained alongside Vercel's AI stack |

---

## Real-World Use Cases

| Task | How |
|------|-----|
| Agent captures screenshots | `agent-browser screenshot` in a shell tool call |
| Agent extracts page content | `agent-browser extract` returns structured text |
| Web research in agent loop | Agent navigates, reads, navigates, reads |

---

## When to Use It

**Good fit:**
- AI agents that call browser actions as shell commands
- Environments where minimising Node.js dependencies is a priority
- Vercel / Next.js projects where Vercel Labs tooling integrates cleanly

**Not the right tool:**
- Complex browser automation with branching logic (use Playwright or Skyvern)
- Applications needing a full JavaScript API over browser control
