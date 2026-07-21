#!/usr/bin/env bash

# ==========================================================
# Mercatvs ImportTrade
# Update Governance Script
#
# Actions:
# - Update .gitignore for local Taskwarrior data
# - Add CODEOWNERS changes
# - Add development scripts
# - Document Prisma integration structure
# - Create clean commits
# ==========================================================

set -e

PROJECT_ROOT="$(git rev-parse --show-toplevel)"

cd "$PROJECT_ROOT"

echo "Project: $PROJECT_ROOT"


# ==========================================================
# Validate repository
# ==========================================================

if [ ! -d ".git" ]; then
    echo "Error: Not a Git repository"
    exit 1
fi


# ==========================================================
# Update .gitignore
# ==========================================================

echo "Updating .gitignore..."

if ! grep -q "Taskwarrior local data" .gitignore 2>/dev/null; then

cat >> .gitignore <<'EOF'


# ==========================================================
# Taskwarrior local data
# ==========================================================

.task/
.taskrc
.taskwarrior/
.taskd/

# Local developer workspace
tasks/
EOF

fi


# ==========================================================
# Prisma documentation
# ==========================================================

echo "Creating Prisma documentation..."

mkdir -p apps/api/prisma

cat > apps/api/prisma/README.md <<'EOF'
# Prisma API Integration

The database schema is maintained in:
