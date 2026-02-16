# 🧠 wormgpt_lite v1.0

Terminal-based AI assistant for Termux powered by Google Gemini API.

> Lightweight • Fast • Memory Enabled • Bash Based

---

## 🚀 Features

- Gemini 2.5 Flash Model
- Conversation Memory (JSON based)
- API Key Auto Save
- Terminal Animation Output
- Command Execution Support
- Download Tool Support

---

## 📦 Requirements

- Termux (Android)
- Bash
- curl
- jq
- Google Gemini API Key

See `requirements.md` for full installation guide.

---

## ⚙️ Installation (Termux)

```bash
pkg update && pkg upgrade
pkg install curl jq git
git clone https://github.com/kvkr21042010-dot/wormgpt_lite.git
cd wormgpt_lite
bash requirements.sh
bash wormgpt_lite.sh
```
   
## 🔑 API Requirement

This project requires a Google AI Studio (Gemini) API key.

### Get Your Free API Key:

1. Visit: https://aistudio.google.com/app/apikey
2. Sign in with your Google account
3. Click "Create API Key"
4. Copy the generated key

### Set API Key in Termux:
(use this command )

export GEMINI_API_KEY="your_api_key_here"

Or edit the script and paste your API key inside the configuration section.

---

⚠️ Keep your API key private. Do NOT share it publicly.
