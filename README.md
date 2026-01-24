# Awesome Claude Agents

A curated collection of Claude Code sub-agents, plugins, and reusable templates.

## Quick Start

### Install the CLI

```bash
curl -sL https://raw.githubusercontent.com/Smaiil/awesome-claude-agents/main/install.sh | bash
```

Or manually:

```bash
# Download CLI
curl -sL https://raw.githubusercontent.com/Smaiil/awesome-claude-agents/main/tools/cli/claude-plugin -o ~/.local/bin/claude-plugin
chmod +x ~/.local/bin/claude-plugin

# Add this registry
claude-plugin marketplace add Smaiil/awesome-claude-agents
```

### Usage

```bash
# Add a registry
claude-plugin marketplace add Smaiil/awesome-claude-agents

# List available plugins
claude-plugin list

# Install a plugin
claude-plugin install code-reviewer

# Search plugins
claude-plugin search "security"

# List installed plugins
claude-plugin installed

# Uninstall
claude-plugin uninstall code-reviewer
```

## Repository Structure

```
awesome-claude-agents/
├── .claude-plugin/
│   └── marketplace.json       # Registry manifest
├── categories/
│   ├── 01-core-development/   # Core coding agents
│   ├── 02-language-specialists/
│   └── 03-infrastructure/
├── templates/                  # Reusable prompt templates
├── tools/
│   └── cli/                   # CLI tool source
└── install.sh                 # One-liner installer
```

## Creating Plugins

### Sub-Agent Format

Create a markdown file in the appropriate category:

```markdown
---
name: my-agent
version: 1.0.0
description: What this agent does
author: your-name
tools: [Read, Grep, Glob, Edit]
tags: [tag1, tag2]
---

# Agent Name

## Role
Describe the agent's purpose and expertise.

## Core Competencies
- Skill 1
- Skill 2

## Checklist
- [ ] Task 1
- [ ] Task 2

## Communication Protocol
How to invoke this agent.
```

### Register in marketplace.json

Add your plugin to `.claude-plugin/marketplace.json`:

```json
{
  "categories": [
    {
      "id": "core-development",
      "plugins": [
        {
          "name": "my-agent",
          "file": "my-agent.md",
          "description": "What it does",
          "version": "1.0.0"
        }
      ]
    }
  ]
}
```

## Templates

Templates are reusable prompts for common tasks. Install them with:

```bash
claude-plugin template install pr-description
```

## Contributing

1. Fork this repository
2. Add your plugin/template
3. Update `marketplace.json`
4. Submit a PR

## License

MIT
