#!/bin/bash -e

# Update os-release file
cat > "${ROOTFS_DIR}/etc/os-release" << EOL
PRETTY_NAME="RAK PiOS GNU/Linux (${RELEASE})"
NAME="RAK PiOS GNU/Linux"
VERSION_ID="${IMG_NAME}"
VERSION="${RELEASE}"
ID="rakpios"
ID_LIKE="debian"
HOME_URL="http://www.rakwireless.com/"
SUPPORT_URL="${PI_GEN_REPO}"
BUG_REPORT_URL="${PI_GEN_REPO}/issues"
COMMIT_SHA="${COMMIT_HASH:-$(git rev-parse --short HEAD)}"
COMMIT_DATE="${COMMIT_DATE:-$(git log -1 --format=%ad --date=short)}"
IMAGE_DATE="$(date +%Y-%m-%d)"
EOL



