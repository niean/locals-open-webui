#!/bin/bash
# start.sh - 启动 Open WebUI (Hermes Chat)

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# 检查 Docker 是否运行
if ! docker info > /dev/null 2>&1; then
    echo "[ERROR] Docker is not running"
    exit 1
fi

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Starting Open WebUI..."
docker compose up -d

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Open WebUI started on http://localhost:3000"
echo "  Access via nginx: http://localhost/chat/"
