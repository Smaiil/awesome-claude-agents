---
name: coverage
version: 1.0.0
description: Generate and analyze test coverage reports
author: smail
tags: [testing, coverage, quality]
---

# /coverage

Generate test coverage report and identify uncovered code.

## Workflow

1. Detect test framework and coverage tool
2. Run tests with coverage enabled:
   - **Jest**: `npx jest --coverage`
   - **Vitest**: `npx vitest --coverage`
   - **pytest**: `pytest --cov=. --cov-report=term-missing`
   - **Go**: `go test -cover ./...`
   - **.NET**: `dotnet test --collect:"XPlat Code Coverage"`

3. Parse coverage report
4. Identify files with low coverage
5. Suggest specific lines/functions needing tests

## Output Format

```
Coverage Summary
================
Statements: 85%
Branches:   72%
Functions:  90%
Lines:      84%

Files Needing Attention:
- src/utils/parser.ts (45%) - lines 23-45, 67-89
- src/api/handler.ts (62%) - lines 101-115
```

## Rules

- Flag files under 80% coverage
- Prioritize critical paths (auth, payments, etc.)
- Suggest specific test cases for uncovered branches
