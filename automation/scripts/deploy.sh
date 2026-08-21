#!/bin/bash

set -e

echo "========================================"
echo "      XQORA LOCAL DEPLOYMENT"
echo "========================================"

APP_DIR="$HOME/xqora-devops-project/application"
APP_URL="http://localhost:5001/health"

echo ""
echo "[1/5] Moving to application directory..."
cd "$APP_DIR"

echo "[2/5] Stopping existing application..."
docker compose down

echo "[3/5] Building and starting application..."
docker compose up -d --build

echo "[4/5] Waiting for application..."
sleep 5

echo "[5/5] Checking application health..."

if curl --fail --silent "$APP_URL" > /dev/null; then
    echo ""
    echo "========================================"
    echo "Deployment successful!"
    echo "Application is healthy: $APP_URL"
    echo "========================================"
else
    echo ""
    echo "========================================"
    echo "Deployment failed!"
    echo "Application health check failed."
    echo "========================================"

    echo "Application logs:"
    docker compose logs

    exit 1
fi
