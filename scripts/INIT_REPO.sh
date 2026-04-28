set -e
REPO_NAME="espandyai-edge-business-plan"
mkdir -p "$REPO_NAME"
cp -R . "$REPO_NAME"/
cd "$REPO_NAME"
git init
git add .
git commit -m "Initial ESPAndyAI EDGE business plan pack"
