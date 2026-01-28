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

### Architecture & Design

- **system-architect** - High-level system design, microservices, scalability patterns
- **api-designer** - RESTful, GraphQL, gRPC API design and OpenAPI specs
- **database-architect** - Schema design, NoSQL modeling, indexing strategies
- **event-driven-architect** - Event sourcing, CQRS, message queues, sagas

### Code Quality

- **refactoring-expert** - Legacy modernization, design patterns, technical debt
- **testing-strategist** - Test pyramid, TDD, BDD, comprehensive testing
- **documentation-writer** - READMEs, API docs, ADRs, technical writing

### DevOps & Infrastructure

- **ci-cd-engineer** - Pipeline design, GitHub Actions, GitLab CI, Jenkins
- **docker-specialist** - Container optimization, multi-stage builds, security
- **kubernetes-operator** - K8s manifests, Helm charts, cluster management
- **terraform-engineer** - Infrastructure as Code, modules, state management
- **cloud-architect** - AWS/Azure/GCP architecture, serverless, cost optimization

### Security

- **security-auditor** - OWASP Top 10, vulnerability assessment, SAST/DAST
- **auth-specialist** - OAuth 2.0, OIDC, JWT, SSO, authentication flows
- **secrets-manager** - Vault, secret rotation, secure configuration

### Performance & Reliability

- **performance-engineer** - Profiling, optimization, caching, load testing
- **observability-expert** - Logging, metrics, tracing, dashboards, alerting
- **sre-specialist** - SLOs, incident response, chaos engineering, runbooks

### Data

- **sql-expert** - Complex queries, optimization, execution plans, indexing
- **data-migration-specialist** - ETL pipelines, schema migrations, zero-downtime
- **caching-strategist** - Redis patterns, cache invalidation, distributed caching

### Developer Experience

- **git-wizard** - Git workflows, branching strategies, conflict resolution
- **cli-builder** - Command-line interface design, argument parsing, completions
- **dev-environment-setup** - Docker Compose, devcontainers, local development

### Specialized Tasks

- **regex-master** - Regular expression patterns, parsing, text extraction
- **dependency-manager** - Version conflicts, security audits, license compliance
- **debugging-detective** - Systematic debugging, root cause analysis, troubleshooting
- **error-handler** - Exception design, retry patterns, circuit breakers

## Available Skills

### Git Workflows

- **/commit** - Create well-formatted conventional commits
- **/pr** - Create pull requests with comprehensive descriptions
- **/changelog** - Generate changelog from git history

### File Formats

- **/docx** - Word document processing
- **/xlsx** - Excel spreadsheet manipulation
- **/pptx** - PowerPoint presentation creation
- **/pdf** - PDF generation and manipulation
- **/markdown** - Markdown formatting and conversion
- **/html-css** - HTML/CSS generation and formatting
- **/json-yaml** - JSON/YAML parsing and conversion
- **/svg** - SVG graphics generation
- **/images** - Image processing and optimization
- **/archives** - ZIP/TAR archive handling

### Programming Languages

- **/python** - Python programming
- **/typescript** - TypeScript development
- **/javascript** - JavaScript coding
- **/csharp** - C# programming
- **/java** - Java development
- **/go** - Go programming
- **/rust** - Rust systems programming
- **/kotlin** - Kotlin development
- **/swift** - Swift programming
- **/php** - PHP scripting
- **/ruby** - Ruby programming
- **/sql** - SQL queries and databases
- **/bash** - Bash scripting
- **/powershell** - PowerShell scripting

### Frameworks

- **/react** - React component development
- **/nextjs** - Next.js full-stack applications
- **/vue** - Vue.js progressive framework
- **/angular** - Angular enterprise apps
- **/svelte** - Svelte reactive framework
- **/express** - Express.js Node server
- **/fastapi** - FastAPI Python async framework
- **/django** - Django Python web framework
- **/flask** - Flask Python microframework
- **/spring-boot** - Spring Boot Java framework
- **/aspnet-core** - ASP.NET Core framework
- **/rails** - Ruby on Rails framework
- **/laravel** - Laravel PHP framework
- **/nestjs** - NestJS TypeScript framework
- **/gin** - Gin Go web framework

### Databases

- **/postgresql** - PostgreSQL relational database
- **/mysql** - MySQL database management
- **/mongodb** - MongoDB NoSQL document database
- **/redis** - Redis in-memory data store
- **/elasticsearch** - Elasticsearch search and analytics
- **/sqlite** - SQLite embedded database
- **/dynamodb** - AWS DynamoDB NoSQL database
- **/cassandra** - Apache Cassandra distributed database

### Cloud Platforms

- **/aws** - Amazon Web Services cloud platform
- **/azure** - Microsoft Azure cloud platform
- **/gcp** - Google Cloud Platform
- **/vercel** - Vercel deployment platform
- **/cloudflare** - Cloudflare edge network and services

### DevOps Tools

- **/docker** - Docker containerization
- **/kubernetes** - Kubernetes container orchestration
- **/terraform** - Terraform infrastructure as code
- **/ansible** - Ansible configuration management
- **/github-actions** - GitHub Actions CI/CD
- **/gitlab-ci** - GitLab CI/CD pipelines
- **/nginx** - Nginx web server and reverse proxy
- **/prometheus** - Prometheus monitoring and alerting

### Testing

- **/test** - Run tests and analyze results
- **/coverage** - Generate and analyze coverage reports
- **/jest** - Jest JavaScript testing framework
- **/pytest** - Pytest Python testing framework
- **/cypress** - Cypress end-to-end testing
- **/playwright** - Playwright browser automation
- **/xunit** - xUnit .NET testing framework
- **/junit** - JUnit Java testing framework
- **/vitest** - Vitest fast unit testing
- **/postman** - Postman API testing

### API Protocols

- **/rest-api** - RESTful API design and development
- **/graphql** - GraphQL API development
- **/grpc** - gRPC high-performance RPC
- **/websocket** - WebSocket real-time communication
- **/soap** - SOAP web services
- **/webhook** - Webhook event-driven integration

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
