#!/bin/bash

echo "========================================"
echo "      XQORA SECURITY BASELINE CHECK"
echo "========================================"

echo ""
echo "--- CURRENT USER ---"
whoami

echo ""
echo "--- SUDO ACCESS ---"
sudo -l

echo ""
echo "--- SSH SERVICE STATUS ---"
systemctl is-active ssh 2>/dev/null || echo "SSH service not active"

echo ""
echo "--- LISTENING PORTS ---"
ss -tuln

echo ""
echo "--- FIREWALL STATUS ---"
if command -v ufw >/dev/null 2>&1; then
    sudo ufw status
else
    echo "UFW is not installed."
fi

echo ""
echo "--- WORLD-WRITABLE FILES IN PROJECT ---"
find ~/xqora-devops-project -type f -perm -0002

echo ""
echo "Security baseline check completed."
