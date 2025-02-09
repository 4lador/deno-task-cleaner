# Deno Task Cleaner

![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Shell](https://img.shields.io/badge/Shell-Fish%20%7C%20Bash-orange)
![Deno](https://img.shields.io/badge/Deno-%3E%3D1.0-brightgreen.svg)

A handy shell script for Deno projects...

- Kill duplicate task instances in monorepos.
- Filter out any unwanted text from stderr using `grep`, including but not limited to `compilerOptions` and `importMap` warnings.
- Ensure a clean development environment with Deno tasks.

Ideal for **Deno projects**, especially those using **Fresh with custom configurations like monorepos** or any Deno process that needs **stderr filtering**.

## Features
- Dynamic task handling: Specify the task name as an argument.
- Prevents duplicate task instances (`pgrep` + `kill`).
- Filters unwanted warnings in real-time (`tail -f` + `grep`).
- Compatible with bash, zsh, and fish shells.

---

## Installation

```bash
curl -o filter-warns.sh https://raw.githubusercontent.com/YOUR_USERNAME/deno-task-cleaner/main/filter-warns.sh
chmod +x filter-warns.sh
```

## Usage

Run the script with the task name you want to manage:

```bash
./filter-warns.sh dev
./filter-warns.sh start
```

## License

This project is licensed under the **MIT License** — feel free to use, modify, and share it.

## Made with <3 and ChatGPT