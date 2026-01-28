# Contributing to Awesome Claude Agents

Thank you for your interest in contributing! This guide will help you get started.

## Ways to Contribute

- **Add new agents** - Share your specialized agents
- **Add new skills** - Contribute workflow automation skills
- **Improve documentation** - Enhance agent/skill descriptions
- **Report issues** - Help us identify bugs or improvements
- **Share use cases** - Show how you're using agents in production

## Creating a New Agent

1. Choose the appropriate category under `agents/`
2. Create a markdown file following the template:

```markdown
---
name: my-agent
description: What this agent does
tools: Read, Write, Edit, Bash, Glob, Grep
model: sonnet
tags: [tag1, tag2]
---

You are a specialist in [domain]. When invoked via this agent, you help users [purpose].

When invoked:

1. [Step 1]
2. [Step 2]
3. [Step 3]
4. [Step 4]

[Agent name] capabilities:

- [Capability 1]
- [Capability 2]
- [Continue...]

## Communication Protocol

Context query:

\`\`\`json
{
  "requesting_agent": "my-agent",
  "request_type": "get_context",
  "payload": {
    "query": "[Context needed]"
  }
}
\`\`\`

## Workflow

### 1. Analysis Phase

[Analysis steps...]

### 2. Implementation Phase

[Implementation steps...]

### 3. Delivery Phase

[Delivery steps...]

Best practices:

- [Practice 1]
- [Practice 2]
- [Continue with 10 practices]

Integration with other agents:

- Work with [agent1] for [purpose]
- Support [agent2] with [purpose]
- [Continue with 6-8 integrations]

Always prioritize [key values] while [main goal].
```

3. Add your agent to `.claude-plugin/marketplace.json`:

```json
{
  "name": "my-agent",
  "file": "my-agent.md",
  "description": "Brief description",
  "version": "1.0.0",
  "tags": ["tag1", "tag2"]
}
```

4. Test your agent locally
5. Update README.md if adding a new category

## Creating a New Skill

1. Choose the appropriate category under `skills/`
2. Create a markdown file following the template (similar structure to agents)
3. Add to `.claude-plugin/marketplace.json` under the skills section
4. Test the skill with the CLI tool

## Quality Guidelines

### Agent/Skill Requirements

- **Clear description** - What does it do and when to use it
- **Comprehensive coverage** - Include all major aspects of the domain
- **Practical examples** - Show real-world usage
- **Best practices** - Include 10+ actionable best practices
- **Integration points** - List 6-8 related agents/skills
- **Workflow phases** - 3 phases with 8+ items each

### Code Quality

- Follow existing formatting and structure
- Use consistent terminology
- Include error handling guidance
- Add security considerations where relevant

### Documentation

- Use clear, concise language
- Provide examples where helpful
- Link to relevant external resources
- Keep descriptions under 100 characters for marketplace

## Submission Process

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/my-agent`)
3. Add your agent/skill
4. Update `marketplace.json`
5. Update `README.md` if needed
6. Commit your changes (`git commit -m 'feat: Add my-agent'`)
7. Push to your fork (`git push origin feature/my-agent`)
8. Open a Pull Request

## PR Guidelines

### Title Format

- `feat: Add [agent/skill name]` - For new agents/skills
- `fix: Fix [issue] in [agent/skill]` - For bug fixes
- `docs: Update [section]` - For documentation
- `refactor: Improve [agent/skill]` - For refactoring

### PR Description

Include:
- **What** - What does this add/change
- **Why** - Why is this useful
- **Testing** - How did you test it
- **Screenshots** - If applicable

### Checklist

- [ ] Follows the template structure
- [ ] Added to marketplace.json
- [ ] Updated README.md (if new category)
- [ ] Tested locally
- [ ] Follows naming conventions
- [ ] Documentation is clear
- [ ] No breaking changes (or clearly documented)

## Testing Your Contribution

### Test Agent Locally

```bash
# Install CLI
curl -sL https://raw.githubusercontent.com/Smaiil/awesome-claude-agents/main/install.sh | bash

# Add local registry
claude-plugin marketplace add /path/to/your/fork

# List agents
claude-plugin list

# Install your agent
claude-plugin install my-agent
```

### Test in Claude Code

1. Open Claude Code
2. Use the Task tool to invoke your agent
3. Verify it follows the expected behavior
4. Check all sections are comprehensive

## Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Focus on the work, not the person
- Help others learn and grow

## Questions?

- Open an issue for questions
- Check existing agents for examples
- Reach out via GitHub Discussions

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for making Awesome Claude Agents better! 🎉
