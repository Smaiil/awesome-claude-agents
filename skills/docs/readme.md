---
name: readme
version: 1.0.0
description: Generate or update project README
author: smail
tags: [docs, readme, documentation]
---

# /readme

Generate or update the project README.md file.

## Workflow

1. Analyze project structure:
   - Check `package.json`, `Cargo.toml`, `pyproject.toml`, etc.
   - Identify main language and framework
   - Find existing documentation

2. Extract information:
   - Project name and description
   - Installation steps
   - Available scripts/commands
   - Dependencies

3. Generate README sections

## README Template

```markdown
# Project Name

Brief description of what this project does.

## Installation

\`\`\`bash
# Installation commands
\`\`\`

## Usage

\`\`\`bash
# Usage examples
\`\`\`

## Development

\`\`\`bash
# Development setup
\`\`\`

## Scripts

| Command | Description |
|---------|-------------|
| `npm start` | Start the app |
| `npm test` | Run tests |

## License

[License type]
```

## Rules

- Keep it concise but complete
- Include actual commands from package.json/Makefile
- Add badges if CI/CD is configured
- Don't overwrite existing custom sections
