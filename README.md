# Dodge the Creeps — Godot 4.5 Learning Project

A complete beginner's walkthrough for building the classic [Dodge the Creeps](https://docs.godotengine.org/en/stable/getting_started/first_2d_game.html) game in Godot 4.5.

## What's inside

- **Game** — Player (WASD/arrows), spawning mobs, score timer, game over/restart
- **Docs** — Brutalist learning website with animated SVGs, analogies, code walkthroughs, signal maps, glossary

All visuals use `_draw()` — zero external art assets.

## Play / Read

- **Live site**: https://godot-learning-irmrg93ox-lakshman-patels-projects.vercel.app

## Structure

```
├── project.godot        # Project config (1024×600, main.tscn)
├── main.gd / .tscn      # Game loop: start, spawn, score, game over
├── player.gd / .tscn    # Area2D — green circle, screen clamp, hit signal
├── mob.gd / .tscn       # Area2D — red rect, random edge spawn, auto-free
├── hud.gd / .tscn       # CanvasLayer — score, message, start button
├── docs/index.html      # Learning website (single-page, no deps)
├── vercel.json          # Vercel deploy config
└── .github/workflows/   # CI/CD — auto-deploy on push to main
```

## Run the game

1. Open Godot 4.5, click **Import**, select `project.godot`
2. Press **F5** (or click Run)

## Deploy

Push to `main` → GitHub Actions deploys to Vercel automatically.
