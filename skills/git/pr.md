---
name: pr
version: 1.0.0
description: Create pull requests with comprehensive descriptions
author: smail
tags: [git, github, pr, workflow]
---

# /pr

Create a pull request with a well-structured description.

## Workflow

1. Run `git log main..HEAD` to see all commits in this branch
2. Run `git diff main...HEAD` to see all changes
3. Identify the main branch with `git remote show origin`
4. Push current branch if needed: `git push -u origin HEAD`
5. Create PR using `gh pr create`

## PR Template

```markdown
## Summary
[2-3 bullet points describing the changes]

## Changes
- [List of specific changes made]

## Test Plan
- [ ] [How to test change 1]
- [ ] [How to test change 2]

## Screenshots
[If applicable]

---
Generated with [Claude Code](https://claude.ai/code)
```

## Rules

- Title should be concise but descriptive
- Summary explains the "why"
- Changes list explains the "what"
- Always include test plan
- Link related issues with "Fixes #123" or "Closes #123"
