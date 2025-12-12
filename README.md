# Chinese Flashcard App

An interactive web-based flashcard application similar to Quizlet for learning Chinese words. The app reads Chinese words from an Excel file and displays them as beautiful, flipable flashcards with block selection feature.

## Features

- 📚 **Excel Database**: Reads Chinese words from Excel file (`Chinese_words_list.xlsx` included)
- 🎴 **Interactive Flashcards**: Click to flip cards and see pronunciation and meaning
- 🔊 **Audio Pronunciation**: Click the speaker button to hear the word pronounced
- 📦 **Block Selection**: Study words in blocks of 100 (1-100, 101-200, etc.)
- ⌨️ **Keyboard Navigation**: Use arrow keys to navigate, space/Enter to flip, 'P' to pronounce
- 🎨 **Modern UI**: Beautiful gradient design with smooth animations
- 📱 **Responsive**: Works on desktop and mobile devices

## Quick Start

### Installation

1. **Clone this repository:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/chinese-flashcard-app.git
   cd chinese-flashcard-app
   ```

2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Run the app:**
   ```bash
   python flashcard_app.py
   ```
   Or on Windows:
   ```bash
   run_flashcard.bat
   ```

4. **Open your browser:**
   Navigate to `http://localhost:8001`

## Usage

1. **Select a block**: Use the dropdown menu to choose a block of 100 words (or "全部单词" for all words)
2. **View the word**: The front of the card shows the Chinese word
3. **Hear pronunciation**: Click the 🔊 speaker button on the right side to hear the word pronounced
4. **Flip the card**: Click on the card or press Space/Enter to see pronunciation and meaning
5. **Navigate**: 
   - Click "上一张" (Previous) or "下一张" (Next) buttons
   - Use Left/Right arrow keys to navigate
   - Use Space or Enter to flip the card
   - Press 'P' key to pronounce the current word/pronunciation

## Excel File Format

The app includes `Chinese_words_list.xlsx` with the following structure:

- `word`: Chinese word (e.g., "的", "一", "不")
- `sound_meaning`: Combined pronunciation and meaning

Example:
| word | sound_meaning |
|------|--------------|
| 的   | de/di2/di4      (possessive particle)/of, really and truly, aim/clear |
| 一   | yi1     one/1/single/a(n) |

The `sound_meaning` column is automatically parsed:
- **Pronunciation** (first part): Extracted before multiple spaces/tabs
- **Meaning** (second part): Extracted after multiple spaces/tabs

## Deployment

### Deploy to GitHub

See [DEPLOY_TO_GITHUB.md](DEPLOY_TO_GITHUB.md) for instructions.

Quick method:
1. Create repository on GitHub: https://github.com/new
2. Run: `push_to_github.bat` (Windows) or follow manual steps

### Deploy to Cloud (Free)

Want to share this app publicly? See:
- **Quick Guide**: [QUICK_START_SHARING.md](QUICK_START_SHARING.md)
- **Full Guide**: [FLASHCARD_DEPLOYMENT.md](FLASHCARD_DEPLOYMENT.md)

**Recommended: Render.com** (Free tier available)
1. Push this repository to GitHub
2. Go to [render.com](https://render.com)
3. Connect your GitHub repository
4. Deploy automatically - your app will be live!

## Requirements

- Python 3.7+
- FastAPI
- pandas
- openpyxl
- uvicorn
- jinja2

All dependencies are listed in `requirements.txt`.

## Project Structure

```
chinese-flashcard-app/
├── flashcard_app.py          # Main FastAPI application
├── templates/
│   └── flashcard.html        # Frontend template
├── Chinese_words_list.xlsx   # Excel database (included!)
├── requirements.txt          # Python dependencies
├── Procfile                  # For cloud deployment
├── runtime.txt               # Python version
├── run_flashcard.bat         # Windows launcher
├── push_to_github.bat        # GitHub deployment helper
└── README.md                 # This file
```

## API Endpoints

- `GET /` - Main flashcard page
- `GET /api/flashcards` - Get all flashcards as JSON
- `GET /api/flashcards?block=1` - Get flashcards for a specific block
- `GET /api/flashcard/{card_id}` - Get a specific flashcard by ID

## Customization

### Change the Excel file path

Edit `flashcard_app.py` and update:
```python
EXCEL_FILE_PATH = Path("path/to/your/file.xlsx")
```

Or set environment variable:
```bash
set EXCEL_FILE_PATH=path/to/your/file.xlsx
```

### Change the port

Edit `flashcard_app.py` or set environment variable:
```bash
set PORT=8002
```

## License

This project is open source and available for educational purposes.

## Contributing

Feel free to submit issues and enhancement requests!
