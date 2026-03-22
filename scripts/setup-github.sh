#!/bin/bash

# ============================================================
# DentiVerse — GitHub Repository Setup Script
# ============================================================
# This script initializes a Git repo and pushes it to GitHub.
#
# PREREQUISITES:
#   1. Git installed (https://git-scm.com)
#   2. GitHub CLI installed (https://cli.github.com) — OR create the repo manually on github.com
#   3. Authenticated with GitHub (run: gh auth login)
#
# USAGE:
#   cd dentiverse-docs
#   chmod +x scripts/setup-github.sh
#   ./scripts/setup-github.sh
#
# If you prefer to create the repo manually:
#   1. Go to https://github.com/new
#   2. Create a repo named "dentiverse-docs" (private recommended)
#   3. Run the commands under "MANUAL PUSH" below
# ============================================================

set -e

REPO_NAME="dentiverse-docs"
REPO_VISIBILITY="private"  # Change to "public" if you want it public

echo ""
echo "🦷 DentiVerse — GitHub Repository Setup"
echo "========================================="
echo ""

# Check if we're in the right directory
if [ ! -f "README.md" ]; then
    echo "❌ Error: Run this script from the dentiverse-docs root directory."
    echo "   cd dentiverse-docs && ./scripts/setup-github.sh"
    exit 1
fi

# Initialize git if not already
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
    git branch -M main
else
    echo "✅ Git already initialized."
fi

# Stage all files
echo "📦 Staging all files..."
git add -A
git commit -m "feat: Phase 1 — Foundation & Definition

- PRD Light (problem, solution, UVP, competitive landscape, success metrics)
- User Personas (4 personas: 2 demand-side, 2 supply-side)
- Technical Specification (Next.js + Supabase + Stripe + Vercel)
- Database Schema / ERD (9 core entities)
- User Flow Diagrams (client flow + designer flow)
- Repository structure and documentation"

# Try GitHub CLI first
if command -v gh &> /dev/null; then
    echo "🔗 Creating GitHub repository via CLI..."
    gh repo create "$REPO_NAME" --"$REPO_VISIBILITY" --source=. --push
    echo ""
    echo "✅ Done! Your repository is live at:"
    gh repo view --web 2>/dev/null || echo "   https://github.com/$(gh api user --jq .login)/$REPO_NAME"
else
    echo ""
    echo "⚠️  GitHub CLI (gh) not found."
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "  MANUAL PUSH — Run these commands:"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    echo "  1. Create a new repo at: https://github.com/new"
    echo "     Name: $REPO_NAME"
    echo "     Visibility: $REPO_VISIBILITY"
    echo "     Do NOT initialize with README"
    echo ""
    echo "  2. Then run:"
    echo "     git remote add origin https://github.com/YOUR_USERNAME/$REPO_NAME.git"
    echo "     git push -u origin main"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
fi

echo ""
echo "🦷 DentiVerse docs are ready for development!"
echo ""
