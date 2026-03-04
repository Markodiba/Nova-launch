#!/bin/bash

# Quick Push Guide for set_metadata Implementation
# Run this script or copy commands individually

echo "╔══════════════════════════════════════════════════════════════════════╗"
echo "║         Push set_metadata Implementation to GitHub                   ║"
echo "╚══════════════════════════════════════════════════════════════════════╝"
echo ""

# Check current status
echo "📊 Current Status:"
git status --short
echo ""

# Show branch info
echo "🌿 Branch Information:"
git branch --show-current
echo ""

# Show commit
echo "📝 Latest Commit:"
git log -1 --oneline
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Choose your authentication method:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Option 1: GitHub CLI (Recommended)"
echo "  gh auth login"
echo "  git push -u origin feature/set-metadata-entrypoint"
echo "  gh pr create --title 'feat: Implement set_metadata entrypoint' --body-file PULL_REQUEST_TEMPLATE.md"
echo ""
echo "Option 2: Personal Access Token"
echo "  git push -u origin feature/set-metadata-entrypoint"
echo "  (Enter your GitHub username and PAT when prompted)"
echo ""
echo "Option 3: Switch to SSH"
echo "  git remote set-url origin git@github.com:Markodiba/Nova-launch.git"
echo "  git push -u origin feature/set-metadata-entrypoint"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Prompt user
read -p "Would you like to try pushing now? (y/n) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "🚀 Attempting to push..."
    git push -u origin feature/set-metadata-entrypoint
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ Push successful!"
        echo ""
        echo "🎯 Next steps:"
        echo "1. Go to: https://github.com/Markodiba/Nova-launch/pulls"
        echo "2. Click 'New pull request'"
        echo "3. Select: base: main <- compare: feature/set-metadata-entrypoint"
        echo "4. Copy content from PULL_REQUEST_TEMPLATE.md"
        echo "5. Create pull request"
        echo ""
        echo "Or use GitHub CLI:"
        echo "  gh pr create --fill"
    else
        echo ""
        echo "❌ Push failed. Please authenticate first."
        echo ""
        echo "Try one of these:"
        echo "  gh auth login                    # GitHub CLI"
        echo "  git credential-cache exit        # Clear cached credentials"
        echo "  git remote set-url origin git@github.com:Markodiba/Nova-launch.git  # Switch to SSH"
    fi
else
    echo ""
    echo "ℹ️  No problem! Push when you're ready with:"
    echo "  git push -u origin feature/set-metadata-entrypoint"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📚 Documentation:"
echo "  - Implementation: contracts/token-factory/SET_METADATA_IMPLEMENTATION.md"
echo "  - Quick Ref: contracts/token-factory/SET_METADATA_QUICK_REF.md"
echo "  - Flow Diagrams: contracts/token-factory/SET_METADATA_FLOW.md"
echo "  - Examples: contracts/token-factory/examples/set_metadata_example.rs"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
