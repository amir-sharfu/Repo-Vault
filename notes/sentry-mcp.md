# Sentry MCP Demo — Beginner's Guide

> Site: [mcp.sentry.dev](https://mcp.sentry.dev/?ide=claude-code)  
> Category: Developer Resources  
> Added: 2026-04-17

---

## What is Sentry MCP? (1 Sentence)

Sentry MCP bridges **Claude Code and Sentry's API** — list issues, inspect stack traces, and resolve errors directly in Claude without leaving your terminal.

---

## The Problem It Solves

Without Sentry MCP, error triage means:
1. Get an alert
2. Copy the issue ID
3. Open browser → navigate to Sentry
4. Scroll through stack traces
5. Update status
6. Switch back to code

**With Sentry MCP**: Ask Claude directly. Get errors, stack traces, and resolutions without leaving Claude Code.

---

## How It Works

The Sentry MCP server exposes Sentry's error tracking as **callable tools** in Claude:

```
You: "List unresolved issues in my Sentry org"
↓
Claude calls: list_issues(status="unresolved")
↓
Sentry API responds
↓
You get formatted error list with counts
```

---

## 5 Available Tools

| Tool | What It Does |
|------|-------------|
| `list_issues` | Paginated list of errors — filter by status, assignee, environment, release |
| `get_issue` | Full issue detail: stack trace, event count, assignee, last seen |
| `resolve_issue` | Mark an issue as resolved |
| `ignore_issue` | Silence an issue (stops notifications) |
| `list_events` | Raw event list for an issue (inspect individual error payloads) |

---

## Setup (5 Minutes)

### 1. Create Auth Token

In Sentry UI:
- Settings → Auth Tokens → Create New Token
- **Scopes needed:** `org:read`, `issue:write`
- Copy the token

### 2. Find Your Org Slug

Look at your Sentry URL: `https://sentry.io/{ORG_SLUG}/`

Example: `https://sentry.io/acme-corp/` → org slug is `acme-corp`

### 3. Set Environment Variables

```bash
export SENTRY_AUTH_TOKEN="your_token_here"
export SENTRY_ORG="your_org_slug"
```

### 4. Open Project in Claude Code

```bash
cd sentry-mcp-demo
claude
```

Claude will ask to approve the Sentry MCP server. Click **Approve**.

---

## Real Use Cases

| Scenario | Claude Command |
|----------|----------------|
| **On-call triage** | "List the last 5 unresolved issues" |
| **Sprint grooming** | "Get details on issue #12345 and tell me the stack trace" |
| **Post-incident review** | "Mark issue #12345 as resolved" |
| **Noise filtering** | "Ignore this noisy issue #67890" |

---

## Example Flow

```
You: List unresolved issues

Claude:
├─ Calls: list_issues(status="unresolved")
├─ Returns: 5 recent errors with:
│  ├─ Issue ID & title
│  ├─ Event count
│  ├─ Last seen
│  └─ Status
└─ You pick one to drill into

You: Get full details on issue #12345

Claude:
├─ Calls: get_issue(issue_id=12345)
├─ Returns: Complete context:
│  ├─ Full stack trace
│  ├─ Source code context
│  ├─ User affected
│  ├─ Browser/OS
│  └─ Release info
└─ You decide: resolve, ignore, or investigate further
```

---

## Troubleshooting

| Issue | Fix |
|-------|-----|
| MCP server not loading | Check env vars: `echo $SENTRY_AUTH_TOKEN` |
| Token rejected | Verify token in Sentry UI, confirm scopes are `org:read` + `issue:write` |
| Tool calls fail | Run `list_issues` first to get valid issue IDs |
| Still stuck? | Restart Claude Code: close and reopen the session |

---

## Why It Matters for Developers

Error triage is a context-switch killer. With Sentry MCP, you stay in your development environment and let Claude handle the Sentry navigation. Perfect for on-call engineers who need to respond fast without losing focus on the code.
