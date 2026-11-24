# Thominho's Homebrew tap

```bash
brew install thominho/tap/unannoy
```

| Formula | What it is |
|---|---|
| [`unannoy`](https://github.com/Thominho/unannoy) | Fix the macOS annoyances everyone complains about, in one command. Fully reversible, no sudo. |

## How updates work

You don't need to edit the formula by hand. The [Update formula](.github/workflows/update-formula.yml) workflow checks for a new unannoy release every 6 hours. You can also start it from the Actions tab. When it finds a new release, it:

1. points the formula at the new release tarball and recomputes its `sha256`,
2. runs `brew audit`, `brew install` and `brew test` on a clean macOS runner,
3. commits the update only if all of that passes.

Users then get the new version with `brew upgrade unannoy`.
