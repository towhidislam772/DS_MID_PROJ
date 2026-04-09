# FC 26 Player Data: Cleaning, Analysis & Prediction Prep

**Course:** Introduction to Data Science  
**Institution:** American International University – Bangladesh (AIUB)  
**Department:** Computer Science and Engineering  
**Section:** K | **Group:** 2  
**Instructor:** Kamrun Nahar Koli

---

## 👥 Group Members

| Name | Student ID | Contribution |
|------|-----------|--------------|
| Md. Towhidul Islam | 23-55036-3 | Normalization, Balancing, Train/Test Split, Introduction |
| Abrar Kabir | 23-55095-3 | Noisy Values, Outliers, Duplicates, Conclusion |
| Tasnim Hassan Ahona | 23-55085-3 | EDA, Visualization, Descriptive Statistics |
| Anika Tabassum | 23-55070-3 | Data Column Selection, Import, Missing Values, Group Comparison |

---

## 📋 Project Overview

This project implements a complete data science pipeline on the **FC 26 (EA Sports FC 2026) Player Dataset** — a rich collection of player features, performance scores, financial data, and demographic information from professional football leagues worldwide.

The workflow covers:
- Intentional introduction of data issues to simulate real-world scenarios
- Data cleaning (missing values, noisy data, outliers, duplicates)
- Exploratory Data Analysis (EDA) with visualizations
- Normalization, class balancing, and train/test splitting

---

## 📁 Repository Contents

| File | Description |
|------|-------------|
| `ProjectCode.R` | Full R source code for the project pipeline |
| `FC26_20250921.csv` | FC 26 player dataset (source: Kaggle) |
| `Proj Final.docx` | Project report (Word format) |
| `Proj Final.pdf` | Project report (PDF format) |
| `SEC(K)_GRP(2)_IDS.docx` | Group submission document (Word) |
| `SEC(K)_GRP(2)_IDS.pdf` | Group submission document (PDF) |
| `codes.txt` | Code reference/notes |
| `Rplot.jpeg` – `Rplot15.jpeg` | Generated plots and visualizations |

---

## 🗂️ Dataset

**Source:** [Kaggle – FC 26 FIFA 26 Player Data](https://www.kaggle.com/datasets/rovnez/fc-26-fifa-26-player-data/data)

**Dimensions:** 18,405 rows × 110 columns (16 columns selected for analysis)

### Selected Features

| Feature | Type | Description |
|---------|------|-------------|
| `short_name` | Character | Player display name |
| `player_positions` | Categorical | Playing position(s) |
| `overall` | Numeric | Current overall rating (0–99) |
| `potential` | Numeric | Maximum projected rating |
| `value_eur` | Numeric | Transfer market value (EUR) |
| `wage_eur` | Numeric | Weekly wage (EUR) |
| `age` | Numeric | Player age (years) |
| `height_cm` | Numeric | Height (cm) |
| `weight_kg` | Numeric | Weight (kg) |
| `preferred_foot` | Binary | Dominant foot (Left/Right) |
| `pace` | Numeric | Speed attributes |
| `shooting` | Numeric | Shooting ability |
| `passing` | Numeric | Passing accuracy and vision |
| `dribbling` | Numeric | Ball control and dribbling |
| `defending` | Numeric | Defensive capability |
| `physic` | Numeric | Physical attributes (strength/stamina) |

---

## 🔧 Methodology

### 1. Data Issues Introduced
Simulated real-world data problems including missing values (`NA`), noisy/invalid entries (e.g., age = 999, preferred_foot = "Hand"), extreme outliers, and duplicate rows.

### 2. Data Cleaning
- **Missing Values:** Mean imputation for normally distributed columns; median imputation for skewed columns (goalkeeper attributes)
- **Noisy Values:** Replaced with mean, median, or mode depending on variable type
- **Outliers:** Detected via boxplots; replaced with median values
- **Duplicates:** Removed using `duplicated()` — row count restored from 18,409 → 18,405

### 3. Exploratory Data Analysis
- Summary statistics (`summary()`, `tapply()`)
- Histogram, Boxplot, Density Plot of Overall Rating
- Bar chart of Preferred Foot distribution
- Group comparison: left-footed vs right-footed player ratings

### 4. Preprocessing for ML
- **Normalization:** Min-max scaling applied to numeric columns
- **Class Balancing:** Oversampling minority classes to match majority (8,792 per class)
- **Train/Test Split:** 80% training (14,724 rows) / 20% testing (3,681 rows)

---

## 📊 Key Findings

- Average overall rating: **65.77** (range: 47–91)
- ~**75%** of players are right-footed — consistent with real-world football
- Left-footed players average slightly higher ratings (**66.46** vs **65.54**)
- Elite players (overall 85+) earn on average **84×** more than Below Average players
- Only **95 elite players** out of 18,405 — highlighting class imbalance in football data

---

## 🚀 How to Run

1. Clone this repository:
   ```bash
   git clone https://github.com/towhidislam772/DS_MID_PROJ.git
   ```
2. Open `ProjectCode.R` in **RStudio**
3. Update the CSV file path in the script to your local path
4. Install required packages if needed:
   ```r
   install.packages(c("ggplot2", "dplyr"))
   ```
5. Run the script section by section

---

## 📦 Dependencies

- **R** (version 4.0+)
- `ggplot2` — Visualizations
- `dplyr` — Data manipulation

---

## 📄 License

This project was created for academic purposes at AIUB. Dataset credit goes to the original uploader on Kaggle.
