# OpenClaude — Multi-Provider Claude Code Fork

> **Repo:** [Gitlawb/openclaude](https://github.com/Gitlawb/openclaude)
> **Stars:** ![Stars](https://img.shields.io/github/stars/Gitlawb/openclaude?style=flat-square) | **License:** MIT | **Built by:** Gitlawb
> **Runs:** Locally in the terminal — macOS, Linux, Windows (WSL)

---

## What is it?

OpenClaude is an open-source fork of Claude Code extended to support 200+ LLM providers — OpenAI, Gemini, DeepSeek, Ollama, Codex, GitHub Models, and any OpenAI-compatible API. You get the full Claude Code terminal-agent experience with any model backend.

---

## The Problem It Solves

| Claude Code (original) | OpenClaude |
|------------------------|------------|
| Locked to Anthropic API | 200+ providers via OpenAI-compatible routing |
| Requires an Anthropic account and key | Use OpenAI, Gemini, DeepSeek, local Ollama, or any compatible provider |
| No flexibility for cost or compliance reasons | Switch providers by changing one config value |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Local Machine"]
        You([You]) -->|task in terminal| OC

        subgraph OC["OpenClaude Agent"]
            CLI[Terminal Interface]
            CLI --> Tools[Tool Calling\n+ MCP support]
            CLI --> Router[Provider Router]
            Router --> P1[Anthropic]
            Router --> P2[OpenAI / Codex]
            Router --> P3[Gemini]
            Router --> P4[DeepSeek]
            Router --> P5[Ollama\nlocal models]
        end

        OC <-->|read/write| Codebase[Your Codebase]
        OC <-->|shell| Terminal[Terminal / Shell]
    end

    style OC fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style CLI fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style Tools fill:#ede9fe,stroke:#8b5cf6,color:#1e1e1e
    style Router fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style P1 fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style P2 fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style P3 fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style P4 fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style P5 fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style You fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style Codebase fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

The agent architecture is identical to Claude Code — terminal-native, tool-calling, streaming, MCP integration, agentic workflows. The provider layer is swapped out so any OpenAI-compatible API can be used as the backend.

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| 200+ model providers | Anthropic, OpenAI, Gemini, DeepSeek, Ollama, GitHub Models, and more |
| Same Claude Code UX | Identical terminal interface and workflow |
| MCP support | Connect MCP servers for external tools |
| Streaming output | Real-time token streaming from any provider |
| Local model support | Ollama integration for air-gapped or cost-free usage |
| MIT licence | Fully open — modify and distribute freely |

---

## Real-World Use Cases

| Scenario | Why OpenClaude |
|----------|---------------|
| You want Claude Code but with GPT-4o | Swap provider, keep the workflow |
| Cost reduction — use DeepSeek or Gemini Flash | Cheaper API, same agent capability |
| Air-gapped environment | Route to local Ollama, no data leaves your machine |
| Testing models side-by-side | Switch config line, compare outputs on same tasks |

---

## When to Use It

**Good fit:**
- Developers who want the Claude Code agent UX but without Anthropic API lock-in
- Cost-conscious teams wanting to benchmark cheaper models on real coding tasks
- Environments where only certain LLM providers are approved

**Not the right tool:**
- Users who prefer the official Claude Code and are happy with Anthropic's API
- Workflows needing Anthropic-specific features not available on other providers
