#!/bin/bash

echo "==================================="
echo "Spam Email Detection Setup"
echo "==================================="
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null
then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

echo "✅ Python 3 found: $(python3 --version)"

# Check if pip is installed
if ! command -v pip3 &> /dev/null
then
    echo "❌ pip3 is not installed. Please install pip3."
    exit 1
fi

echo "✅ pip3 found: $(pip3 --version)"

# Install required packages
echo ""
echo "Installing required packages..."
pip3 install -r requirements.txt

if [ $? -eq 0 ]; then
    echo "✅ All packages installed successfully!"
else
    echo "❌ Failed to install packages"
    exit 1
fi

# Check if Jupyter is installed
echo ""
if ! command -v jupyter &> /dev/null
then
    echo "⚠️  Jupyter Notebook not found. Installing..."
    pip3 install jupyter notebook
else
    echo "✅ Jupyter Notebook already installed"
fi

# Check if datasets exist
echo ""
echo "Checking for datasets..."
datasets_found=0
for file in spam.csv combined_data.csv email_spam.csv sms_spam.csv; do
    if [ -f "$file" ]; then
        echo "✅ Found: $file"
        datasets_found=1
    fi
done

if [ $datasets_found -eq 0 ]; then
    echo "⚠️  No dataset files found in current directory"
    echo ""
    echo "Please download one of the recommended datasets:"
    echo "- Kaggle: https://www.kaggle.com/datasets/mfaisalqureshi/spam-email/data"
    echo "- UCI: https://archive.ics.uci.edu/dataset/228/sms+spam+collection"
    echo ""
    echo "Place the CSV file in this directory and rename it to 'spam.csv'"
else
    echo "✅ Datasets are ready"
fi

echo ""
echo "==================================="
echo "Setup Complete!"
echo "==================================="
echo ""
echo "To start the notebook, run:"
echo "  jupyter notebook SpamDetect.ipynb"
echo ""

