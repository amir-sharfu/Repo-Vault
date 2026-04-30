# repo-insider

> Deep-dive notes for every GitHub repo in the vault.
> Each folder contains one `README.md` with a full breakdown — no fluff, no install required to read.

---

## What's in Each Deep-Dive

Every `README.md` inside this folder follows the same structure:

| Section | What You Get |
|---------|-------------|
| **What is it?** | One-paragraph plain-English explanation |
| **The Problem It Solves** | Side-by-side table: before vs. after |
| **How It Works** | Mermaid flowchart showing the architecture |
| **Core Features** | Feature table with plain descriptions |
| **Real-World Use Cases** | Concrete examples of what you'd actually do with it |
| **When to Use It** | Good fit / not the right tool — helps you decide fast |

---

## AI & ML

### Autonomous Agents & Builders

| Folder | Repo | What It Does |
|--------|------|-------------|
| [goose](./goose/README.md) | [block/goose](https://github.com/block/goose) | Autonomous local AI coding agent — plans, writes code, runs shell commands, browses the web end-to-end |
| [openhands](./openhands/README.md) | [OpenHands/OpenHands](https://github.com/OpenHands/OpenHands) | Open-source AI dev agent in a Docker sandbox — writes, runs, debugs code with a real-time web UI; 70k+ stars |
| [swe-agent](./swe-agent/README.md) | [SWE-agent/SWE-agent](https://github.com/SWE-agent/SWE-agent) | Princeton's autonomous GitHub issue fixer — reads issue, writes patch, runs tests, iterates |
| [devika](./devika/README.md) | [stitionai/devika](https://github.com/stitionai/devika) | Open-source agentic engineer — plans, researches web, codes, and debugs with live web UI |
| [agent-zero](./agent-zero/README.md) | [agent0ai/agent-zero](https://github.com/agent0ai/agent-zero) | Transparent self-organising agent — Linux terminal as primary tool, hierarchical sub-agents, dynamic tool creation |
| [hermes-agent](./hermes-agent/README.md) | [NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent) | Self-improving agent — builds a persistent skill library from experience; 200+ LLM providers |

### Multi-Agent Orchestration

| Folder | Repo | What It Does |
|--------|------|-------------|
| [camel-ai](./camel-ai/README.md) | [camel-ai/camel](https://github.com/camel-ai/camel) | First multi-agent framework — role-playing user/assistant/critic cooperation |
| [metagpt](./metagpt/README.md) | [FoundationAgents/MetaGPT](https://github.com/FoundationAgents/MetaGPT) | Multi-agent software company — PM, Architect, Engineer, QA produce full code projects |
| [atomic-agents](./atomic-agents/README.md) | [BrainBlend-AI/atomic-agents](https://github.com/BrainBlend-AI/atomic-agents) | Modular typed AI pipelines — every component single-purpose and testable |
| [gptswarm](./gptswarm/README.md) | [metauto-ai/GPTSwarm](https://github.com/metauto-ai/GPTSwarm) | Graph-based agent swarms — self-organising, self-optimising topology |
| [mirofish](./mirofish/README.md) | [666ghj/MiroFish](https://github.com/666ghj/MiroFish) | Swarm prediction engine — 1,000s of AI agents simulate real-world outcomes |

### Memory & Reasoning

| Folder | Repo | What It Does |
|--------|------|-------------|
| [dspy](./dspy/README.md) | [stanfordnlp/dspy](https://github.com/stanfordnlp/dspy) | Stanford's LLM programming framework — typed modules + auto prompt optimization |
| [mem0](./mem0/README.md) | [mem0ai/mem0](https://github.com/mem0ai/mem0) | Universal memory layer — persistent, user-adaptive, cross-session via any vector store |
| [letta](./letta/README.md) | [letta-ai/letta](https://github.com/letta-ai/letta) | Stateful agents with unlimited memory — OS-inspired virtual memory tiers, agent-controlled |
| [storm](./storm/README.md) | [stanford-oval/storm](https://github.com/stanford-oval/storm) | Stanford's knowledge curation — multi-persona research generates full cited Wikipedia-style reports |

### Evaluation & Prediction

| Folder | Repo | What It Does |
|--------|------|-------------|
| [future-agi](./future-agi/README.md) | [future-agi/future-agi](https://github.com/future-agi/future-agi) | LLM eval + observability — 50+ metrics, adversarial simulations, 18 guardrails |
| [clawless](./clawless/README.md) | [open-gitagent/clawless](https://github.com/open-gitagent/clawless) | Serverless browser-native agent runtime — full Node.js in WASM, no backend |
| [timesfm](./timesfm/README.md) | [google-research/timesfm](https://github.com/google-research/timesfm) | Google's zero-shot time series forecasting model — trained on 100B real-world time points |

---

## Automation

| Folder | Repo | What It Does |
|--------|------|-------------|
| [stealth-browser-mcp](./stealth-browser-mcp/README.md) | [vibheksoni/stealth-browser-mcp](https://github.com/vibheksoni/stealth-browser-mcp) | Undetectable browser automation MCP server — bypasses Cloudflare, 90 tools for AI agents |
| [skyvern](./skyvern/README.md) | [Skyvern-AI/skyvern](https://github.com/Skyvern-AI/skyvern) | Vision-based browser automation — uses LLM + screenshots, survives UI changes |
| [paperclip](./paperclip/README.md) | [paperclipai/paperclip](https://github.com/paperclipai/paperclip) | Autonomous AI agent business platform — org charts, goals, budget tracking |
| [agent-orchestrator](./agent-orchestrator/README.md) | [ComposioHQ/agent-orchestrator](https://github.com/ComposioHQ/agent-orchestrator) | Parallel AI coding agent fleet — each in its own git worktree, auto CI fix loops |

---

## Dev Tools

### Claude Code Ecosystem

| Folder | Repo | What It Does |
|--------|------|-------------|
| [oh-my-claudecode](./oh-my-claudecode/README.md) | [Yeachan-Heo/oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode) | Multi-agent plugin for Claude Code — 19 specialist agents, 36 skills |
| [openclaude](./openclaude/README.md) | [Gitlawb/openclaude](https://github.com/Gitlawb/openclaude) | Claude Code fork for 200+ LLM providers — same UX, any backend |
| [agent-skills](./agent-skills/README.md) | [addyosmani/agent-skills](https://github.com/addyosmani/agent-skills) | Engineering lifecycle skills by Addy Osmani — /spec /plan /build /test /review /ship |
| [caveman](./caveman/README.md) | [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) | Plugin that cuts Claude Code output tokens 65–75% via compressed responses |
| [awesome-claude-code-subagents](./awesome-claude-code-subagents/README.md) | [VoltAgent/awesome-claude-code-subagents](https://github.com/VoltAgent/awesome-claude-code-subagents) | 131+ specialist subagent definitions — drop into .claude/ and use immediately |
| [claude-usage](./claude-usage/README.md) | [phuryn/claude-usage](https://github.com/phuryn/claude-usage) | Local dashboard for Claude Code token history and cost estimates |
| [claude-usage-monitor](./claude-usage-monitor/README.md) | [Gronsten/claude-usage-monitor](https://github.com/Gronsten/claude-usage-monitor) | VS Code extension showing Claude usage in the status bar |

### Agent Infrastructure

| Folder | Repo | What It Does |
|--------|------|-------------|
| [e2b](./e2b/README.md) | [e2b-dev/E2B](https://github.com/e2b-dev/E2B) | Secure cloud sandboxes — agents run arbitrary code safely in Firecracker microVMs |
| [agentops](./agentops/README.md) | [AgentOps-AI/agentops](https://github.com/AgentOps-AI/agentops) | One-line observability — session replay, cost tracking, error traces for any agent |
| [composio](./composio/README.md) | [ComposioHQ/composio](https://github.com/ComposioHQ/composio) | 1,000+ pre-built tool integrations with managed auth for AI agents |
| [burr](./burr/README.md) | [apache/burr](https://github.com/apache/burr) | Stateful AI app framework — state machines with persistence and telemetry UI |
| [voltagent](./voltagent/README.md) | [VoltAgent/voltagent](https://github.com/VoltAgent/voltagent) | TypeScript agent framework — typed multi-agent system with VoltOps ops console |
| [plandex](./plandex/README.md) | [plandex-ai/plandex](https://github.com/plandex-ai/plandex) | Terminal coding agent — stages diffs in sandbox, review before applying |

### Context & Token Optimization

| Folder | Repo | What It Does |
|--------|------|-------------|
| [rtk](./rtk/README.md) | [rtk-ai/rtk](https://github.com/rtk-ai/rtk) | CLI proxy compressing command output 60–90% before reaching the LLM |
| [code-review-graph](./code-review-graph/README.md) | [tirth8205/code-review-graph](https://github.com/tirth8205/code-review-graph) | Structural knowledge graph MCP server — 6.8x token reduction for code tasks |
| [sentrux](./sentrux/README.md) | [sentrux/sentrux](https://github.com/sentrux/sentrux) | Architectural health scorer via MCP — agents loop until code quality improves |
| [agent-browser](./agent-browser/README.md) | [vercel-labs/agent-browser](https://github.com/vercel-labs/agent-browser) | Native Rust browser CLI for agents — navigate, screenshot, extract from the shell |

### General Dev Tools

| Folder | Repo | What It Does |
|--------|------|-------------|
| [lark-cli](./lark-cli/README.md) | [larksuite/cli](https://github.com/larksuite/cli) | Official Lark/Feishu CLI — 200+ commands, 24 AI agent skills, MCP server |

---

## Security

| Folder | Repo | What It Does |
|--------|------|-------------|
| [seclists](./seclists/README.md) | [danielmiessler/SecLists](https://github.com/danielmiessler/SecLists) | The pentester's wordlist arsenal — passwords, directories, subdomains, fuzzing payloads |
| [st3gg](./st3gg/README.md) | [elder-plinius/ST3GG](https://github.com/elder-plinius/ST3GG) | All-in-one steganography suite — 100+ hide/detect techniques across any media type |

---

## Coverage

| Category | Sub-group | Deep-Dives |
|----------|----------|-----------|
| AI & ML | Autonomous agents | 6 |
| AI & ML | Multi-agent orchestration | 5 |
| AI & ML | Memory & reasoning | 4 |
| AI & ML | Eval & prediction | 3 |
| Automation | | 4 |
| Dev Tools | Claude Code ecosystem | 7 |
| Dev Tools | Agent infrastructure | 6 |
| Dev Tools | Context & token optimization | 4 |
| Dev Tools | General | 1 |
| Security | | 2 |
| **Total** | | **42** |
