#!/bin/bash

echo "========================================"
echo "   XQORA DEVOPS SERVICE HEALTH CHECK"
echo "========================================"

check_service() {
    SERVICE=$1

    if systemctl is-active --quiet "$SERVICE"; then
        echo "[RUNNING] $SERVICE"
    else
        echo "[NOT RUNNING] $SERVICE"
    fi
}

check_container() {
    CONTAINER=$1

    if docker ps --format '{{.Names}}' | grep -q "^${CONTAINER}$"; then
        echo "[RUNNING] $CONTAINER"
    else
        echo "[NOT RUNNING] $CONTAINER"
    fi
}

echo ""
echo "--- SYSTEM SERVICES ---"

check_service docker
check_service jenkins

echo ""
echo "--- MONITORING CONTAINERS ---"

check_container xqora-prometheus
check_container xqora-grafana
check_container xqora-node-exporter

echo ""
echo "========================================"
echo "Service health check completed."
