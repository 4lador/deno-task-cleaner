# Deno Task Cleaner 🧹

A handy shell script for Deno projects to:
- Kill duplicate task instances in monorepos.
- Filter out annoying `compilerOptions` and `importMap` warnings from `stderr`.
- Ensure a clean development environment with Deno tasks.

Ideal for **Deno monorepos** or projects using **Fresh**.

## 🌟 Features
- Dynamic task handling: Specify the task name as an argument.
- Prevents duplicate task instances (`pgrep` + `kill`).
- Filters unwanted warnings in real-time (`tail -f` + `grep`).
- Compatible with bash, zsh, and fish shells.

---

## 🚀 Installation

```bash
curl -o filter-warns.sh https://raw.githubusercontent.com/YOUR_USERNAME/deno-task-cleaner/main/filter-warns.sh
chmod +x filter-warns.sh
