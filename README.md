# Spam Email Detection Using Machine Learning

A comprehensive machine learning project for detecting spam emails using multiple classification algorithms and NLP techniques.

## 🎯 Project Overview

This project implements a robust spam email detection system that:
- Uses multiple ML models (Naive Bayes, Logistic Regression, Random Forest, SVM)
- Extracts comprehensive features from email content
- Implements TF-IDF vectorization for text analysis
- Provides detailed performance metrics and visualizations
- Includes error analysis and prediction capabilities

## 📊 Datasets

The system is designed to work with spam email datasets in CSV format with two columns:
- **label**: `spam` or `ham` (non-spam)
- **text**: Email message content

### Recommended Datasets:

1. **Kaggle Spam Email Dataset** (5K samples)
   - [Download here](https://www.kaggle.com/datasets/mfaisalqureshi/spam-email/data)

2. **UCI SMS Spam Collection** (8K samples)
   - [Download here](https://archive.ics.uci.edu/dataset/228/sms+spam+collection)

3. **Kaggle Combined Data**
   - [Reference](https://www.kaggle.com/code/hatsuynguyen/detecting-spam-in-emails-with-lstms-99-accuracy/input/select-combined_data.csv)

### Advanced Datasets for Enhanced Accuracy:

- **SpamAssassin Public Corpus**: Full email headers with authentication data
- **Enron Dataset**: Large-scale real-world email corpus (0.5M+ messages)
- **UCI Spambase Dataset**: Pre-engineered statistical features (57 features)

## 🚀 Getting Started

### Prerequisites

- Python 3.8 or higher
- pip package manager

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/SpamEmailDetection_AI.git
cd SpamEmailDetection_AI
```

2. Install required packages:
```bash
pip install -r requirements.txt
```

3. Download your dataset:
   - Place your CSV file in the project root directory
   - Common filenames: `spam.csv`, `combined_data.csv`, `email_spam.csv`, `sms_spam.csv`

4. Open the Jupyter Notebook:
```bash
jupyter notebook SpamDetect.ipynb
```

### Running the Notebook

The notebook is structured into 10 main sections:

1. **Introduction** - Project overview and dataset information
2. **Exploratory Data Analysis** - Data exploration and statistics
3. **Feature Engineering** - Extraction of statistical and linguistic features
4. **Text Preprocessing** - Cleaning and preparing text data
5. **Model Training** - Training multiple classification models
6. **Model Evaluation & Visualization** - Performance metrics and charts
7. **Best Model Selection** - Detailed analysis of top performer
8. **Error Analysis** - Examination of misclassifications
9. **Model Deployment** - Prediction function for new emails
10. **Conclusion & Next Steps** - Recommendations and improvements

## 🔍 Features Implemented

### Content-Based Features
- Text length and word count
- Uppercase letter usage
- Digit patterns
- Special character frequency
- URL detection
- Email address patterns
- Spam keyword analysis
- Punctuation analysis

### NLP Techniques
- TF-IDF Vectorization (5,000 features)
- Unigrams and bigrams
- Stop word removal option
- Text normalization

### ML Models
- **Multinomial Naive Bayes** - Fast probabilistic classifier
- **Logistic Regression** - Linear model with interpretability
- **Random Forest** - Ensemble method with 100 trees
- **SVM (Linear Kernel)** - Support vector machine

### Evaluation Metrics
- Accuracy
- Precision
- Recall
- F1-Score
- ROC-AUC
- Confusion Matrix
- Classification Report

## 📈 Expected Performance

With proper datasets, the models typically achieve:
- **Accuracy**: 95-99%
- **Precision**: 90-98%
- **Recall**: 90-98%
- **F1-Score**: 92-98%

## 🔧 Customization

### Add Your Own Dataset

1. Place your CSV file in the project root
2. Ensure it has `label` and `text` columns (or variants like `v1`/`v2`, `Category`/`Message`)
3. Run the notebook - it will automatically detect and load your dataset

### Adjust Model Parameters

Modify the model initialization in Section 5:
```python
models = {
    'Naive Bayes': MultinomialNB(alpha=1.0),  # Add smoothing parameter
    'Logistic Regression': LogisticRegression(C=1.0),  # Regularization
    'Random Forest': RandomForestClassifier(n_estimators=200),  # More trees
    'SVM': SVC(kernel='rbf', gamma='scale')  # Try different kernel
}
```

## 🎯 Future Enhancements

### High Priority
1. **Email Header Parsing** - SPF, DKIM, DMARC authentication
2. **Metadata Extraction** - Sender reputation, routing analysis
3. **Deep Learning** - BERT/Transformer models for context understanding
4. **Real-time API** - Flask/FastAPI deployment

### Medium Priority
1. **Word Embeddings** - Word2Vec, GloVe integration
2. **LSTM/GRU Models** - Sequential pattern recognition
3. **Model Ensembling** - Stacking and voting classifiers
4. **HTML Analysis** - Structural feature extraction

### Nice to Have
1. **Image Analysis** - Image-to-text ratio
2. **Link Classification** - URL reputation checking
3. **Multi-language Support** - Beyond English emails
4. **Explanatory AI** - LIME/SHAP for interpretability

## 📚 Resources

- [Scikit-learn Documentation](https://scikit-learn.org/stable/)
- [NLTK Documentation](https://www.nltk.org/)
- [TF-IDF Explained](https://en.wikipedia.org/wiki/Tf%E2%80%93idf)
- [Email Authentication Standards](https://dmarc.org/)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📝 License

This project is open source and available under the MIT License.

## 👤 Author

Spam Email Detection Project

## 🙏 Acknowledgments

- Kaggle community for datasets
- UCI Machine Learning Repository
- Open source ML community

## ⚠️ Important Notes

- **For Production**: Add email header analysis for best accuracy
- **Privacy**: Handle email data responsibly and in compliance with regulations
- **Performance**: Results vary based on dataset quality and size
- **Limitations**: Content-based detection may miss sophisticated spam

