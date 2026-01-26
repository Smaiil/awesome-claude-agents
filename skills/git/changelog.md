---
name: changelog
version: 1.0.0
description: Generate changelog entries from git history
author: smail
tags: [git, changelog, release]
---

# /changelog

Generate a changelog entry from recent git commits.

## Workflow

1. Determine version range (last tag to HEAD or between two tags)
2. Run `git log --oneline <range>` to get commits
3. Categorize commits by type (feat, fix, etc.)
4. Generate formatted changelog entry

## Output Format

```markdown
## [X.Y.Z] - YYYY-MM-DD

### Added
- New feature descriptions (from `feat` commits)

### Changed
- Change descriptions (from `refactor` commits)

### Fixed
- Bug fix descriptions (from `fix` commits)

### Removed
- Removal descriptions (from commits mentioning removal)
```

## Rules

- Group by category, not chronologically
- Use past tense ("Added" not "Add")
- Include PR/issue references where available
- Skip chore/style commits unless significant
- Keep entries user-focused, not implementation-focused
