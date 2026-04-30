#!/bin/bash
set -e

echo "============================================"
echo " MiroFish Playground — Setup Starting"
echo "============================================"

# Load keys from repo-vault .env file if it exists
if [ -f "/workspaces/repo-vault/.env" ]; then
  echo "Loading API keys from /workspaces/repo-vault/.env..."
  set -a
  source /workspaces/repo-vault/.env
  set +a
fi

# Step 1: Install uv (Python package manager required by MiroFish)
echo ""
echo "[1/4] Installing uv..."
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.local/bin:$PATH"
echo "uv installed: $(uv --version)"

# Step 2: Clone MiroFish
echo ""
echo "[2/4] Cloning MiroFish..."
if [ ! -d "/workspaces/MiroFish" ]; then
  git clone https://github.com/666ghj/MiroFish /workspaces/MiroFish
else
  echo "MiroFish already cloned, skipping."
fi

cd /workspaces/MiroFish

# Step 3: Install all dependencies (frontend + backend)
echo ""
echo "[3/4] Installing dependencies (frontend + backend)..."
npm run setup:all

# Step 4: Write .env
echo ""
echo "[4/4] Creating .env..."
cat > /workspaces/MiroFish/.env << ENVFILE
# LLM Configuration
# Recommended: Alibaba Qwen via Bailian (https://bailian.console.aliyun.com/)
# Alternative: any OpenAI-compatible provider
LLM_API_KEY=${LLM_API_KEY:-your_llm_api_key_here}
LLM_BASE_URL=${LLM_BASE_URL:-https://dashscope.aliyuncs.com/compatible-mode/v1}
LLM_MODEL_NAME=${LLM_MODEL_NAME:-qwen-plus}

# Memory — Zep Cloud (https://www.getzep.com/)
ZEP_API_KEY=${ZEP_API_KEY:-your_zep_api_key_here}

# Optional: faster LLM for certain operations
# LLM_BOOST_API_KEY=
# LLM_BOOST_BASE_URL=
# LLM_BOOST_MODEL_NAME=
ENVFILE

echo ""
echo "============================================"
echo " Setup complete!"
echo "============================================"
echo ""
echo "Next steps:"
echo ""
echo "  1. Set your API keys:"
echo "     - Edit /workspaces/MiroFish/.env"
echo "     - OR set Codespaces Secrets: LLM_API_KEY, ZEP_API_KEY"
echo "       (Settings > Codespaces > Secrets at github.com/settings/codespaces)"
echo ""
echo "  2. Start MiroFish:"
echo "     cd /workspaces/MiroFish && npm run dev"
echo ""
echo "  3. Open port 3000 in the browser (Ports panel in VS Code)"
echo ""
echo "  Get API keys:"
echo "  - LLM_API_KEY : https://bailian.console.aliyun.com/ (Qwen, recommended)"
echo "               OR https://platform.openai.com/api-keys (OpenAI)"
echo "  - ZEP_API_KEY : https://www.getzep.com/"
echo ""
