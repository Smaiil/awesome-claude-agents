---
name: test
version: 1.0.0
description: Run tests and analyze results
author: smail
tags: [testing, quality, workflow]
---

# /test

Run the project's test suite and analyze results.

## Workflow

1. Detect test framework by checking:
   - `package.json` for Jest/Vitest/Mocha
   - `pytest.ini` or `pyproject.toml` for pytest
   - `Cargo.toml` for Rust tests
   - `go.mod` for Go tests
   - `*.csproj` for .NET tests

2. Run appropriate test command:
   - **npm/yarn/pnpm**: `npm test` or `npx jest`
   - **Python**: `pytest -v`
   - **Rust**: `cargo test`
   - **Go**: `go test ./...`
   - **.NET**: `dotnet test`

3. Analyze results:
   - Report pass/fail counts
   - Highlight failing tests
   - Suggest fixes for common failures

## Arguments

- No args: Run all tests
- `<path>`: Run tests in specific file/directory
- `--watch`: Run in watch mode (if supported)
- `--coverage`: Run with coverage report

## Output

- Summary of test results
- List of failures with file locations
- Suggested next steps
