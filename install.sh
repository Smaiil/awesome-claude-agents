#!/usr/bin/env bash

# One-liner installer for claude-plugin CLI
# Usage: curl -sL https://raw.githubusercontent.com/USER/awesome-claude-agents/main/install.sh | bash

set -e

REPO="USER/awesome-claude-agents"  # Update with your GitHub username
INSTALL_DIR="${HOME}/.local/bin"
CLAUDE_DIR="${HOME}/.claude"

echo "Installing claude-plugin CLI..."

# Create directories
mkdir -p "$INSTALL_DIR" "$CLAUDE_DIR/agents" "$CLAUDE_DIR/templates"

# Download CLI
curl -sL "https://raw.githubusercontent.com/${REPO}/main/tools/cli/claude-plugin" -o "${INSTALL_DIR}/claude-plugin"
chmod +x "${INSTALL_DIR}/claude-plugin"

# Initialize plugins.json if needed
if [[ ! -f "${CLAUDE_DIR}/plugins.json" ]]; then
    echo '{"registries":[],"installed":[]}' > "${CLAUDE_DIR}/plugins.json"
fi

# Check if install dir is in PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo ""
    echo "Add this to your shell profile (.bashrc, .zshrc, etc.):"
    echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
    echo ""
fi

echo "Installed successfully!"
echo ""
echo "Quick start:"
echo "  claude-plugin marketplace add ${REPO}"
echo "  claude-plugin list"
echo "  claude-plugin install <plugin-name>"
