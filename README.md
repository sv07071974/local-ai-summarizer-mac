# local-ai-summarizer-mac
🤖 AI-powered text summarizer running locally on Mac with Apple Silicon optimization. No cloud, no API costs, complete privacy.

# 🤖 Local AI Text Summarizer for Mac

[![Python 3.9+](https://img.shields.io/badge/python-3.9+-blue.svg)](https://www.python.org/downloads/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Apple Silicon](https://img.shields.io/badge/Apple-Silicon-black.svg)](https://support.apple.com/en-us/HT211814)
[![Gradio](https://img.shields.io/badge/Interface-Gradio-orange.svg)](https://gradio.app/)

> Transform long articles into concise summaries using AI that runs entirely on your Mac. No cloud dependencies, no API costs, complete privacy.

![AI Summarizer Demo](assets/interface-demo.png)

## ✨ Features

- 🔒 **100% Private** - All processing happens locally on your Mac
- ⚡ **Apple Silicon Optimized** - Full M1/M2 GPU acceleration  
- 🌐 **Beautiful Web Interface** - Professional Gradio-based UI
- 📊 **Real-time Statistics** - See compression ratios and processing times
- 🎛️ **Customizable Settings** - Multiple summary styles and lengths
- 💰 **Zero Ongoing Costs** - No API fees or subscriptions
- 🚀 **Fast Processing** - 2-8 seconds per summary
- 📱 **Responsive Design** - Works on all screen sizes

## 🎯 Performance

Tested on MacBook Pro M2:

| Metric | Value |
|--------|-------|
| **Model Loading** | 30-60 seconds (first time only) |
| **Summary Speed** | 2-8 seconds |
| **Memory Usage** | ~1.5GB RAM |
| **Compression Rate** | 85-95% text reduction |
| **Accuracy** | Excellent for articles & reports |

## 🚀 Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/local-ai-summarizer-mac.git
cd local-ai-summarizer-mac
```

### 2. Run Automated Setup
```bash
chmod +x scripts/setup.sh
./scripts/setup.sh
```

### 3. Launch the Web Interface
```bash
source venv/bin/activate
python src/web_app.py
```

### 4. Open in Browser
The interface will automatically open at `http://127.0.0.1:7860`

![Terminal Output](assets/terminal-output.png)

## 📋 Manual Installation

If you prefer manual setup:

```bash
# Create virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Test core functionality
python src/summarizer.py

# Launch web interface
python src/web_app.py
```

## 💻 Usage Examples

### Command Line
```python
from src.summarizer import OpenSummarizer

# Initialize
summarizer = OpenSummarizer()

# Summarize text
summary = summarizer.summarize(
    text="Your long article here...",
    max_words=50
)
print(summary)
```

### Web Interface
1. **Select Example** - Try pre-loaded articles
2. **Paste Your Text** - Articles, reports, papers
3. **Choose Style** - Very Brief, Brief, Moderate, Detailed
4. **Generate Summary** - Get results in seconds

## 🎨 Interface Preview

| Input | Output |
|-------|--------|
| ![Input Interface](assets/input-interface.png) | ![Output Interface](assets/output-interface.png) |

## 🛠️ Technical Details

### Architecture
- **AI Model**: Google FLAN-T5 (990MB)
- **Backend**: PyTorch + Transformers
- **Frontend**: Gradio web framework
- **Optimization**: Apple Metal Performance Shaders (MPS)

### Supported Content Types
- 📰 News articles
- 📊 Research papers
- 💼 Business reports  
- 📝 Meeting notes
- 📖 Long-form content

### Models Used
1. **Primary**: `google/flan-t5-base` - Excellent summarization
2. **Fallback**: `google/flan-t5-small` - Lightweight option
3. **Advanced**: `microsoft/Phi-3-mini-4k-instruct` - Newer model

## 📊 Real-World Results

### News Article Example
**Original (247 words):**
> "The Federal Reserve announced today a 0.25% interest rate increase, marking the fifth consecutive hike this year as the central bank continues its aggressive campaign to combat persistent inflation..."

**AI Summary (15 words):**
> "Federal Reserve raised interest rates by 0.25% to combat inflation, marking the fifth increase this year."

**Compression: 94% reduction**

## 🔧 Troubleshooting

### Common Issues

| Issue | Solution |
|-------|----------|
| **Model won't download** | Check internet connection, ensure 2GB+ free space |
| **Out of memory** | Restart app, close other applications |
| **Slow performance** | Normal on first run, subsequent runs are faster |
| **Web interface won't start** | Check if port 7860 is available |

### Performance Tips
- **First run**: Model downloads automatically (990MB)
- **Apple Silicon**: Ensure you have the latest macOS for best GPU support
- **Memory**: Close unnecessary applications for optimal performance
- **Text length**: Best results with 50-2000 word documents

### Debug Mode
```bash
# Run with verbose output
python src/web_app.py --debug

# Test core functionality
python src/summarizer.py --test
```

## 🎯 Use Cases

### For Researchers
- Quickly scan paper abstracts
- Summarize literature reviews
- Process conference proceedings

### For Business
- Digest quarterly reports
- Summarize meeting transcripts
- Process market research

### For Students
- Summarize textbook chapters
- Process research materials
- Create study notes

### For Content Creators
- Summarize source materials
- Create social media snippets
- Generate article abstracts

## 🔮 Roadmap

- [ ] **Fine-tuning Support** - Train on custom datasets
- [ ] **Batch Processing** - Summarize multiple files
- [ ] **Export Options** - PDF, Markdown, plain text
- [ ] **API Endpoint** - REST API for integration
- [ ] **Mobile App** - iOS companion app
- [ ] **Plugin Support** - Browser extension
- [ ] **Multiple Languages** - Non-English text support

## 🤝 Contributing

We welcome contributions! Here's how to get started:

1. **Fork** the repository
2. **Create** a feature branch: `git checkout -b feature/amazing-feature`
3. **Commit** your changes: `git commit -m 'Add amazing feature'`
4. **Push** to branch: `git push origin feature/amazing-feature`
5. **Open** a Pull Request

### Development Setup
```bash
# Clone your fork
git clone https://github.com/yourusername/local-ai-summarizer-mac.git

# Install development dependencies
pip install -r requirements-dev.txt

# Run tests
python -m pytest tests/

# Format code
black src/
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Hugging Face** - For the incredible Transformers library
- **Google** - For the FLAN-T5 model
- **Gradio Team** - For the amazing web interface framework
- **PyTorch** - For Apple Silicon optimization

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/yourusername/local-ai-summarizer-mac/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/local-ai-summarizer-mac/discussions)
- **Medium Article**: [Full Tutorial](https://medium.com/@yourusername/how-i-built-a-local-ai-text-summarizer)

## ⭐ Star History

[![Star History Chart](https://api.star-history.com/svg?repos=yourusername/local-ai-summarizer-mac&type=Date)](https://star-history.com/#yourusername/local-ai-summarizer-mac&Date)

---

<div align="center">

**🚀 If this project helped you, please give it a ⭐ star!**

**Made with ❤️ on macOS**

</div>
