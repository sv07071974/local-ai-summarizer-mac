#!/bin/bash
echo "🚀 Setting up Local AI Summarizer..."

# Create virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

echo "✅ Setup complete! Run 'python src/web_app.py' to start"
