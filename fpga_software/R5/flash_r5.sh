#!/bin/bash

# ==============================
# Remoteproc ELF Flash Script
# ==============================

RPROC_PATH="/sys/class/remoteproc/remoteproc0"
FIRMWARE_DIR="/lib/firmware"

# --------- Args check ----------
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <firmware.elf>"
    exit 1
fi

ELF_PATH="$1"
ELF_NAME=$(basename "$ELF_PATH")

# --------- File check ----------
if [ ! -f "$ELF_PATH" ]; then
    echo "❌ Error: File does not exist: $ELF_PATH"
    exit 1
fi

# --------- Root check ----------
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run as root (sudo)"
    exit 1
fi

echo "✅ ELF found: $ELF_PATH"

# --------- Copy ELF ----------
echo "📦 Copying $ELF_NAME to $FIRMWARE_DIR"
cp "$ELF_PATH" "$FIRMWARE_DIR"

if [ $? -ne 0 ]; then
    echo "❌ Copy failed"
    exit 1
fi

sync

# --------- Remoteproc control ----------
echo "🧠 Loading firmware into remoteproc"

echo "$ELF_NAME" > "$RPROC_PATH/firmware"
sleep 0.2

echo "stop" > "$RPROC_PATH/state"
sleep 0.2

echo "start" > "$RPROC_PATH/state"
sleep 0.2

# --------- Status ----------
echo "📡 Remoteproc state:"
cat "$RPROC_PATH/state"

echo "✅ Flash complete"
