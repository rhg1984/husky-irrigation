#!/usr/bin/env bash
# Self-host the Unsplash hero images.
# Run from repo root:  bash scripts/self-host-images.sh
#
# Requires: curl, cwebp (apt: webp / brew: webp).
#
# After running, the script will print sed commands to swap the URLs
# in the HTML — review them, then run them, rebuild CSS, and commit.

set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p site/public/assets/hero

declare -A IMGS=(
  ["hero-sprinkler"]="https://images.unsplash.com/photo-1743742566156-f1745850281a?auto=format&fit=crop&w=1600&q=80"
  ["full-yard"]="https://images.unsplash.com/photo-1635111057505-3b7dcc2b72fb?auto=format&fit=crop&w=1600&q=80"
  ["drip-irrigation"]="https://images.unsplash.com/photo-1718565524318-b58b8b86b813?auto=format&fit=crop&w=1600&q=80"
  ["smart-controller-app"]="https://images.unsplash.com/photo-1693776472225-be367ccf88b7?auto=format&fit=crop&w=1600&q=80"
  ["valve-manifold"]="https://images.unsplash.com/photo-1659477483097-31b5af4fe535?auto=format&fit=crop&w=1600&q=80"
)

for name in "${!IMGS[@]}"; do
  url="${IMGS[$name]}"
  echo "→ $name"
  curl -fsSL "$url" -o "/tmp/${name}.jpg"
  cwebp -q 80 "/tmp/${name}.jpg" -o "site/public/assets/hero/${name}.webp" >/dev/null
  rm "/tmp/${name}.jpg"
  ls -lh "site/public/assets/hero/${name}.webp" | awk '{print "  ",$5}'
done

echo ""
echo "Done. Now run these sed commands to swap the HTML references:"
echo ""
cat <<'EOF'
sed -i 's|https://images.unsplash.com/photo-1743742566156-f1745850281a?auto=format&fit=crop&w=1600&q=80|/assets/hero/hero-sprinkler.webp|g' site/public/*.html
sed -i 's|https://images.unsplash.com/photo-1635111057505-3b7dcc2b72fb?auto=format&fit=crop&w=1600&q=80|/assets/hero/full-yard.webp|g' site/public/*.html
sed -i 's|https://images.unsplash.com/photo-1718565524318-b58b8b86b813?auto=format&fit=crop&w=1600&q=80|/assets/hero/drip-irrigation.webp|g' site/public/*.html
sed -i 's|https://images.unsplash.com/photo-1693776472225-be367ccf88b7?auto=format&fit=crop&w=1600&q=80|/assets/hero/smart-controller-app.webp|g' site/public/*.html
sed -i 's|https://images.unsplash.com/photo-1659477483097-31b5af4fe535?auto=format&fit=crop&w=1600&q=80|/assets/hero/valve-manifold.webp|g' site/public/*.html
sed -i 's|https://images.unsplash.com/photo-1743742566156-f1745850281a?auto=format&fit=crop&w=900&q=80|/assets/hero/hero-sprinkler.webp|g' site/public/*.html
EOF
echo ""
echo "Heads up: when you swap to local paths, please verify each Unsplash photo's"
echo "license at unsplash.com — most allow free commercial use but a small number"
echo "carry attribution requirements."
