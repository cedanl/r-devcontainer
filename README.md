# R devcontainer

Deze repository biedt een minimale development container voor R-projecten, geïnspireerd door de python-uv-devcontainer.

## Gebruik

1. Clone deze repo naar GitHub (bijv. als template voor je organisatie).
2. Open de map in VS Code.
3. Kies: `Reopen in Container` (Dev Containers / Codespaces).
4. Dependencies worden automatisch geïnstalleerd via het R-script in `postCreateCommand`.
5. Run de app:

   ```bash
   Rscript src/main.R
   ```

## Vereisten

- Docker moet geïnstalleerd en actief zijn op je machine (of je gebruikt GitHub Codespaces met container support).
- Een editor die met devcontainers overweg kan, zoals VS Code + de Dev Containers-extensie of GitHub Codespaces.

**Zonder Docker (of een equivalente container runtime) kan deze setup niet werken**, omdat de volledige ontwikkelomgeving in de container draait.
