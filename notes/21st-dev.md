# 21st.dev — Beginner's Guide

> Site: [21st.dev](https://21st.dev/)  
> Category: AI & Productivity / Developer Resources  
> Added: 2026-04-06

---

## What is 21st.dev? (1 Sentence)

21st.dev is the **largest React component registry + agent infrastructure platform** for AI applications — used by 1.4 million developers to build, deploy, and run AI agents with real-time streaming, observability, and pre-built UI components.

---

## Two Sides of the Platform

### 1. Agent Infrastructure (SDK)

The fastest way to add AI agents into your app. The SDK handles everything you'd otherwise build yourself:

| What You Need | What 21st Handles |
|---------------|-------------------|
| Secure sandboxing (agent can't leak bash/filesystem access) | Sandboxed execution environments |
| Real-time responses flowing to frontend | Streaming responses built-in |
| Auth, rate limits, billing tracking | Authentication & rate limiting |
| Debug & replay agent sessions | Observability & session tracing |
| Deployment infrastructure | Managed cloud infrastructure |

### 2. Component Registry

A community-driven UI library — buttons, sliders, AI chat interfaces, animated heroes — all installable with a single command:

```bash
npx shadcn@latest add "https://21st.dev/r/component-name"
```

- Built with **Tailwind CSS** and **Radix UI**
- Minimal, modern, lightweight
- Designed specifically for AI-powered UIs

---

## The Problem 21st Solves

You write a Claude Code agent locally. Now what? You need:

1. Secure sandboxing — agent bash access + filesystem can't leak to users
2. Real-time streaming — agent responses flow to your frontend as they happen
3. Auth, rate limiting, billing tracking
4. Observability — replay sessions, trace every tool call

**Without 21st**: Build all of this yourself (weeks of infra work)  
**With 21st**: Write the agent, deploy it, everything is wired up

---

## Real-World Example

Building an AI research assistant:

1. Write your Claude Code agent logic
2. Use 21st SDK to define tools, memory, and streaming
3. Deploy with one command
4. Grab pre-built chat UI components from the registry
5. Agent runs securely with real-time streaming + observability dashboard

---

## Why It Matters for AI Development

21st is the **production deployment layer** for AI agents. When you've built a Claude Code agent or multi-agent workflow locally, 21st is where those agents actually live when serving real users — with all the security, scaling, and observability handled for you.

---

## Key Facts

- Used by **1.4 million developers**
- Backed by **Y Combinator**
- Open-source UI components
- SDK supports tools, memory, streaming, and observability out of the box
- Works seamlessly with Claude, OpenAI, and other LLM providers
