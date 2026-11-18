# homebrew-tools

Osobisty tap Homebrew dla narzędzi, których nie ma w homebrew-core.

```bash
brew tap Grejeru/tools
brew install Grejeru/tools/<formula>
brew upgrade            # aktualizuje też formuły z tego tapa
```

| Formula | Źródło | Uwagi |
|---|---|---|
| `ccstatusline` | npm | status line / hooki dla Claude Code |
| `playwright-mcp` | npm (`@playwright/mcp`) | serwer MCP, bin `playwright-mcp` |
| `context7-mcp` | npm (`@upstash/context7-mcp`) | serwer MCP, bin `context7-mcp` |
| `aws-azure-login` | npm | logowanie do AWS przez Azure AD |
| `stalwart-cli` | GitHub Releases (arm64) | prebuilt binarka cargo-dist; tylko Apple Silicon |
| `passage` | GitHub (tag) | `pass` oparty o `age` |

## Aktualizacje wersji

Workflow `.github/workflows/autobump.yml` codziennie odpala `brew bump --open-pr`
i otwiera PR-y z nowymi wersjami (livecheck w każdej formule). Merge ręczny.
Lokalnie: `brew livecheck --tap Grejeru/tools` pokazuje, co jest nowsze.

## Dodawanie formuły

1. `Formula/<nazwa>.rb` z `livecheck` (npm: `strategy :npm`; GitHub: `:github_latest`).
2. `brew audit --strict --formula Grejeru/tools/<nazwa>` i `brew test Grejeru/tools/<nazwa>`.
3. Dopisz wiersz do tabeli powyżej.
