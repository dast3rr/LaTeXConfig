#!/bin/bash

echo "LaTeX environment installation..."

# Tex live installation. Needs for full LaTeX functionality, including all packages and classes. If you need a minimal set, you can install texlive-base.
echo "TeX live installation..."
sudo apt update
sudo apt install -y texlive-full

# VS Code extensions installation. LaTeX Workshop is a popular extension for LaTeX support in VS Code. HyperSnips is a fork of the original HyperSnips extension, which provides snippet support for LaTeX.
echo "VS Code extensions installation..."
code --install-extension James-Yu.latex-workshop
code --install-extension brian-g-w.hypersnips-math 

# Create a folder for snippets in the user's home directory. This is where the LaTeX snippets will be stored.
HSNIPS_DIR="$HOME/.config/Code/User/.hsnips"
echo "Creating folder for snippets: $HSNIPS_DIR..."
mkdir -p "$HSNIPS_DIR"

# Copy the latex.hsnips file to the snippets folder. This file contains the LaTeX snippets that will be used in VS Code.
if [ -f "latex.hsnips" ]; then
    echo "Copying latex.hsnips to $HSNIPS_DIR..."
    cp latex.hsnips "$HSNIPS_DIR/"
    echo "Installation complete!"
else
    echo "Error: file latex.hsnips not found near the script. Place it in the same folder."
    exit 1
fi
echo "Done! File latex.hsnips successfully created."