# Awesome Claude Agents

A curated collection of Claude Code agents, skills, and reusable templates.

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

# List available agents and skills
claude-plugin list

# Install an agent
claude-plugin install code-reviewer

# Install a skill
claude-plugin install commit

# Search by tag
claude-plugin search "security"

# List installed
claude-plugin installed

# Uninstall
claude-plugin uninstall code-reviewer
```

## Repository Structure

```
awesome-claude-agents/
├── agents/                    # Sub-agents (spawned via Task tool)
│   ├── core-development/      # Code review, debugging, etc.
│   └── language-specialists/  # Language-specific experts
├── skills/                    # Slash commands (/command)
│   ├── git/                   # Git workflow automation
│   ├── testing/               # Test execution and coverage
│   └── docs/                  # Documentation generation
├── templates/                 # Reusable prompt templates
├── tools/
│   └── cli/                   # CLI tool source
├── .claude-plugin/
│   └── marketplace.json       # Registry manifest
└── install.sh                 # One-liner installer
```

## Agents vs Skills

| Type          | Purpose                                          | How to Use                                       |
| ------------- | ------------------------------------------------ | ------------------------------------------------ |
| **Agents**    | Autonomous sub-agents with specialized expertise | Spawned via `Task` tool or agent definitions     |
| **Skills**    | Action-oriented slash commands for workflows     | Invoked with `/command` (e.g., `/commit`)        |
| **Templates** | Reusable prompt snippets                         | Copy into your prompts                           |

## Available Agents

### Core Development

- **code-reviewer** - Senior code reviewer for quality, security, and best practices

### Language Specialists

- **c-specialist** - C systems programming expert
- **cpp-specialist** - Modern C++ development expert
- **python-specialist** - Python web, data science, and automation
- **dotnet-specialist** - .NET and C# enterprise development
- **typescript-specialist** - TypeScript full-stack development

## Available Skills

### Git Workflows

- **/commit** - Create well-formatted conventional commits
- **/pr** - Create pull requests with comprehensive descriptions
- **/changelog** - Generate changelog from git history

### Testing

- **/test** - Run tests and analyze results
- **/coverage** - Generate and analyze coverage reports

### Documentation

- **/readme** - Generate or update project README

## Creating Agents

Create a markdown file in `agents/<category>/`:

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

## Communication Protocol
How to invoke this agent.
```

## Creating Skills

Create a markdown file in `skills/<category>/`:

```markdown
---
name: my-skill
version: 1.0.0
description: What this skill does
author: your-name
tags: [workflow, automation]
---

# /my-skill

Brief description of the command.

## Workflow
1. Step one
2. Step two
3. Step three

## Arguments
- `arg1`: Description
- `--flag`: Description

## Output Format
Describe expected output.
```

## Contributing

1. Fork this repository
2. Add your agent or skill
3. Update `marketplace.json`
4. Submit a PR

## License

MIT
