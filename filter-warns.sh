#!/bin/bash

# Find `deno task $1` (parents)
DENO_PARENT_PIDS=$(pgrep -f "deno task $1")

if [ -n "$DENO_PARENT_PIDS" ]; then
  echo "Killing existing $1 instances"
  echo "$DENO_PARENT_PIDS" | while read PID; do
    echo "  → Killing PID: $PID"
    kill $PID
  done
fi

# Launch task and redirect stderr to temp file
deno task "$1" 2> /tmp/deno_stderr.log &

# Capture process PID
NEW_DENO_PID=$!

# Watch stderr in real time and filter warnings
tail -f /tmp/deno_stderr.log | grep -v 'Warning "compilerOptions"' | grep -v 'Warning "importMap"'

# Wait for the process to complete
wait $NEW_DENO_PID
