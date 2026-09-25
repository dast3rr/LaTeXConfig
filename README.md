# LaTeXConfig for VS Code
My configs for LaTeX in VS Code. I'm using it for conspects and other stuff. There are some simple snippets I use for fast TeX so you can change them or add some new.

## Requirements

Before you start, make sure you have the following installed:

* **[Visual Studio Code](https://code.visualstudio.com/)**: Must be installed and added to your system's PATH (so the `code` command works in your terminal).
* **Git**: To clone this repository.
* **WSL (for Windows users using the Linux script)**: If you plan to use the `.sh` script on Windows, ensure Windows Subsystem for Linux (e.g., Ubuntu) is installed, and you are running the VS Code server inside WSL.

## Installation Guide

### Linux or WSL
1. Copy repository
2. `chmod +x setup_latex.sh`
3. `bash ./setup_latex.sh`

> I haven't configured it on mac or Windows so I generated guides for these platforms using LLM. And I don't know if they work or not.

### Windows
1. Install a LaTeX distribution like [TeX Live](https://tug.org/texlive/windows.html) or [MiKTeX](https://miktex.org/download).
2. Install VS Code extensions: `LaTeX Workshop` (James-Yu.latex-workshop) and `HyperSnips for Math` (brian-g-w.hypersnips-math).
3. Create a `.hsnips` folder in your user directory (e.g., `C:\Users\YourUsername\.hsnips`) and copy the `latex.hsnips` file from this repository there.
4. Open VS Code Settings (`Ctrl + ,`), search for `hypersnips.hsnipsDir`, and set it to your created folder path.

### macOS
1. Install [MacTeX](https://tug.org/mactex/) (or run `brew install --cask mactex-no-gui` in terminal).
2. Install VS Code extensions: `LaTeX Workshop` (James-Yu.latex-workshop) and `HyperSnips for Math` (brian-g-w.hypersnips-math).[cite: 12]
3. Open terminal, create a snippets folder (`mkdir ~/.hsnips`), and copy the `latex.hsnips` file there.[cite: 12]
4. Open VS Code Settings (`Cmd + ,`), search for `hypersnips.hsnipsDir`, and set the path to `~/.hsnips`.[cite: 12]


## Quick Start

1. Create a new file with a `.tex` extension in VS Code.
2. Add the basic LaTeX document structure:
   ```latex
   \documentclass{article}
   \begin{document}
   Hello, LaTeX!
   \end{document}
   ```
3. **Compile:** Press `Ctrl + S` (Save). The LaTeX Workshop extension will automatically build your file.
4. **Preview:** Press `Ctrl + Alt + V` (or click the magnifying glass icon). A live PDF preview will open.
5. **SyncTeX:** `Ctrl + Click` on any text in the PDF to jump to the corresponding line in your `.tex` code. 
6. **Use Snippets:** Type `mk` to instantly create an inline math environment!

## Snippets Cheat Sheet

These snippets are configured with the `iA` (in-word, auto-expand) or `wA` flags. This means they trigger **instantly** as you type, without needing to press `Tab` or `Space` first.

| Trigger | Generates (LaTeX) | Description |
| :--- | :--- | :--- |
| `mk` | `$...$` | Math mode |
| `//` | `\frac{...}{...}` | Fraction |
| `^` | `^{...}` | Superscript |
| `_` | `_{...}` | Subscript |
| `sum` | `\sum_{n=0}^{\infty} ...` | Summation with pre-filled limits |
| `infty` | `\infty` | Infinity symbol |

## Changing snippets

To change or add new snippets:

**Linux or WSL:**
Go to `~/.config/Code/User/.hsnips` and change `latex.hsnips`.

**Windows:**
Go to `C:\Users\YourUsername\.hsnips` (or the folder you specified in VS Code settings) and change `latex.hsnips`.

**macOS:**
Go to `~/.hsnips` and change `latex.hsnips`.

**Note for all platforms:** After adding or changing snippets, you usually need to reload the VS Code window (`Ctrl+Shift+P` or `Cmd+Shift+P` -> `Developer: Reload Window`) for the extension to apply the updates.

