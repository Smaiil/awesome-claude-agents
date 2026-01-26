---
name: commit
version: 1.0.0
description: Create well-formatted git commits with conventional commit messages
author: smail
tags: [git, commit, workflow]
---

# /commit

Create a git commit with a well-structured conventional commit message.

## Workflow

1. Run `git status` to see changed files
2. Run `git diff --staged` to review staged changes (if any)
3. Run `git diff` to review unstaged changes
4. Analyze the changes and determine the commit type:
   - `feat`: New feature
   - `fix`: Bug fix
   - `docs`: Documentation only
   - `style`: Formatting, no code change
   - `refactor`: Code restructuring
   - `test`: Adding tests
   - `chore`: Maintenance tasks
5. Stage relevant files with `git add`
6. Create commit with format: `type(scope): description`

## Commit Message Format

```
type(scope): short description

[optional body with more details]

[optional footer]
Co-Authored-By: Claude <noreply@anthropic.com>
```

## Rules

- Keep subject line under 72 characters
- Use imperative mood ("add" not "added")
- Don't end subject with period
- Separate subject from body with blank line
- Body should explain what and why, not how
