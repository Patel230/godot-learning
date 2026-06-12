<div align="center">
  <h1>🎮 Dodge the Creeps</h1>
  <p>
    <strong>Learn Godot 4.5 — from zero to a complete 2D game</strong>
  </p>
  <p>
    <a href="https://gd-learning.vercel.app"><img src="https://img.shields.io/badge/📖_Read_the_docs-gd--learning.vercel.app-000?style=flat-square" alt="Docs"></a>
    <a href="https://github.com/Patel230/godot-learning/actions"><img src="https://img.shields.io/github/actions/workflow/status/Patel230/godot-learning/deploy.yml?branch=main&style=flat-square&label=CI/CD" alt="CI/CD"></a>
    <a href="https://godotengine.org"><img src="https://img.shields.io/badge/Godot-4.5-478cbf?style=flat-square&logo=godot-engine&logoColor=white" alt="Godot 4.5"></a>
    <a href="https://github.com/Patel230/godot-learning/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue?style=flat-square" alt="License"></a>
  </p>
</div>

A complete beginner's walkthrough for building the classic *Dodge the Creeps* game ([official tutorial](https://docs.godotengine.org/en/stable/getting_started/first_2d_game.html)) — but all visuals are drawn with code (`_draw()`), zero external art assets.

---

## ✨ Features

- **WASD / arrow key** movement with screen clamping
- **Randomly spawning enemies** from screen edges — red rectangles that fly across
- **Scoring system** — score increases every second you survive
- **Game over / restart** — collision triggers game over, click to restart
- **Brutalist learning website** — animated SVGs, code walkthroughs, analogies, signal maps, glossary

## 🚀 Quick Start

```bash
# 1. Clone
git clone https://github.com/Patel230/godot-learning.git

# 2. Open in Godot 4.5
# File → Import → select project.godot

# 3. Run
# Press F5
```

## 📁 Structure

```
├── project.godot      # 1024×600, main.tscn
├── main.gd / .tscn    # Game loop — start, spawn, score, game over
├── player.gd / .tscn  # Area2D — green circle, WASD, hit signal
├── mob.gd / .tscn     # Area2D — red rect, random edge spawn
├── hud.gd / .tscn     # CanvasLayer — score, message, start button
├── docs/index.html    # Learning website (single file, zero deps)
├── vercel.json        # Vercel config
└── .github/workflows/ # CI/CD auto-deploy
```

## 🌐 Deploy

Push to `main` → [GitHub Actions](https://github.com/Patel230/godot-learning/actions) deploys to [gd-learning.vercel.app](https://gd-learning.vercel.app) automatically.

## 📖 Docs

Full walkthrough with analogies, diagrams, and code explanations: **[gd-learning.vercel.app](https://gd-learning.vercel.app)**
