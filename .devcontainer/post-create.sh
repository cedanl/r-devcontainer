#!/usr/bin/env bash
set -euo pipefail

echo "Starting post-create setup..."

# Install core R packages
Rscript -e 'install.packages(c("devtools", "usethis", "pak", "renv"), repos="https://cran.rstudio.com/")'

# Install org-wide Claude/OpenCode skills from cedanl/.github
npx --yes skills add cedanl/.github --skill '*' -a claude-code -a opencode -y --copy -g

# Source .env file on shell startup (fallback for secrets not set on host)
ENV_FILE="/workspaces/r-devcontainer/.devcontainer/.env"
echo "[ -f \"$ENV_FILE\" ] && set -a && source \"$ENV_FILE\" && set +a" >> ~/.bashrc

# onboard alias for manual re-runs
echo "alias onboard='bash /workspaces/r-devcontainer/.devcontainer/onboard.sh'" >> ~/.bashrc

echo "Post-create complete."
