# Lark CLI — Official Lark/Feishu Command-Line Interface for Humans and AI Agents

> **Repo:** [larksuite/cli](https://github.com/larksuite/cli)
> **Stars:** ![Stars](https://img.shields.io/github/stars/larksuite/cli?style=flat-square) | **License:** MIT | **Built by:** Lark/Feishu (ByteDance)
> **Runs:** Locally as a CLI or as an MCP server — macOS, Linux, Windows

---

## What is it?

Lark CLI is the official command-line interface for the Lark/Feishu collaboration platform. It covers 200+ commands across messaging, docs, calendar, sheets, tasks, and meetings — and doubles as an MCP server so AI agents can act on Lark directly from tools like Claude Desktop or Cursor.

---

## The Problem It Solves

| Without Lark CLI | With Lark CLI |
|-----------------|---------------|
| Accessing Lark from automation scripts requires writing OAuth + API glue code | 200+ ready-made commands, auth handled |
| AI agents can't interact with Lark without custom integrations | Drop-in MCP server — any MCP client connects instantly |
| Manual tasks in the Lark UI are not scriptable | Full CLI coverage of messages, docs, sheets, calendar, tasks, meetings |

---

## How It Works

```mermaid
flowchart LR
    subgraph House["🏠 Your Local Machine"]
        You([You / AI Agent]) -->|CLI command\nor MCP call| CLI

        subgraph CLI["Lark CLI"]
            Auth[OAuth Auth]
            Router[Command Router\n200+ commands]
            Skills[24 AI Agent Skills]
            Auth --> Router
            Router --> Skills
        end

        CLI -->|Lark API| Lark[Lark / Feishu\nCloud Platform]
        Lark --> Msg[Messages]
        Lark --> Docs[Docs]
        Lark --> Cal[Calendar]
        Lark --> Sheets[Sheets / Base]
    end

    style CLI fill:#f0f4ff,stroke:#6366f1,stroke-width:2px,color:#1e1e1e
    style Auth fill:#dbeafe,stroke:#3b82f6,color:#1e1e1e
    style Router fill:#ede9fe,stroke:#8b5cf6,color:#1e1e1e
    style Skills fill:#ffd8a8,stroke:#f59e0b,color:#1e1e1e
    style You fill:#a5d8ff,stroke:#4a9eed,color:#1e1e1e
    style Lark fill:#b2f2bb,stroke:#22c55e,color:#1e1e1e
    style Msg fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style Docs fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style Cal fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style Sheets fill:#d1fae5,stroke:#10b981,color:#1e1e1e
    style House fill:#f8f9fa,stroke:#495057,stroke-width:2px,color:#1e1e1e
```

Install once, authenticate via OAuth, then call any command from the terminal or wire it up as an MCP server. The 24 built-in AI Agent Skills are pre-packaged multi-step workflows for common Lark tasks.

---

## Core Features

| Feature | What It Does |
|---------|--------------|
| 200+ commands | Full coverage: Messenger, Docs, Sheets, Base, Calendar, Mail, Tasks, Meetings |
| 24 AI Agent Skills | Pre-built multi-step workflows for common tasks |
| MCP server mode | Run as `lark mcp` — any MCP client connects and gains Lark superpowers |
| Table output | Structured, readable terminal output with column filtering |
| Dry-run mode | Preview what a command will do before executing |
| Smart defaults | Sensible defaults reduce flags needed for common operations |

---

## Real-World Use Cases

| Task | Command Style |
|------|--------------|
| Send a message to a channel | `lark message send --channel #general --text "Deploy done"` |
| Create a doc from a template | `lark doc create --template meeting-notes` |
| List today's calendar events | `lark calendar list --date today` |
| Let Claude manage your Lark | Add as MCP server → Claude reads/sends messages, creates tasks |

---

## When to Use It

**Good fit:**
- Automating Lark tasks from scripts or CI/CD pipelines
- Giving AI agents (Claude, Cursor) the ability to interact with Lark
- Teams where Lark is the primary collaboration tool and want terminal-first workflows

**Not the right tool:**
- You don't use Lark/Feishu (Slack/Teams users have no benefit here)
- GUI-driven workflows where the Lark web app is sufficient
