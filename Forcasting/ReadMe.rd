# 📈 Forecasting Models Comparison

Welcome to the **Forecasting Models Comparison** repository! This project demonstrates how different time series forecasting models perform on synthetic datasets, focusing on **pure trend data**.

---

## 🔹 Overview

We generated **synthetic time series data** representing a simple linear trend with Gaussian noise, and then compared multiple forecasting models:

* Classical statistical models: `ARIMA`, `SARIMA`
* Decomposition-based models: `STL + XGBoost`
* Machine learning models: `XGBoost`, `LightGBM`
* Hybrid models: `ARIMA + XGBoost residuals`
* Additive trend model: `Prophet`

The goal is to analyze **accuracy**, **overfitting**, and **trend-handling capabilities** of each approach.

---

## 🔹 20-Year Pure Trend Experiment

| Model                    | RMSE      | Notes                                                 |
| ------------------------ | --------- | ----------------------------------------------------- |
| Prophet                  | **2.064** | Excellent for pure trend, minimal overfitting         |
| Hybrid (ARIMA + XGBoost) | 4.799     | Improves ARIMA residuals but still worse than Prophet |
| ARIMA (5,1,0)            | 5.281     | Classical differencing works, but less precise        |
| SARIMA (5,1,0)(0,0,0)12  | 5.281     | Same as ARIMA; no seasonal pattern present            |
| SARIMA (1,1,0)(0,0,0)12  | 5.559     | Slightly worse than ARIMA                             |
| STL + XGBoost            | 5.786     | Decomposition less useful on pure trend               |
| XGBoost (Trend Only)     | 6.001     | Overfits slightly even with explicit trend            |
| XGBoost (Lags + Trend)   | 6.205     | Lag features do not help in pure trend data           |
| LightGBM (Lags + Trend)  | 7.832     | Overfits more heavily with lags                       |
| LightGBM (Trend Only)    | 8.408     | Struggles to generalize on pure trend                 |

---

## 🔹 Key Insights

* **Prophet excels** on pure trends due to its additive trend model.
* **Hybrid approaches** improve classical ARIMA forecasts but are less effective than Prophet for simple trends.
* **ML models** (XGBoost, LightGBM) may **overfit**, especially when using lag features without seasonality.
* **STL decomposition** is valuable when seasonality exists but provides limited benefit on pure trend data.
* **ARIMA/SARIMA** are decent but cannot beat additive trend modeling for long-term linear trends.

---

## 🔹 Repository Contents

```
├── data/           # Synthetic datasets and examples
├── notebooks/      # Jupyter notebooks for experiments
├── models/         # Saved model artifacts
├── scripts/        # Python scripts for generating data & forecasts
└── README.md       # Project overview
```

---

## 🔹 Usage

1. Clone the repository:

```bash
git clone https://github.com/yourusername/forecasting-comparison.git
cd forecasting-comparison
```

2. Install dependencies:

```bash
pip install prophet xgboost lightgbm statsmodels scikit-learn matplotlib pandas numpy
```

3. Run the forecasting experiments:

```bash
python scripts/run_forecasting.py
```

4. Visualize results with the provided plots.

---

## 🔹 Future Work

* Add **seasonal and cyclic patterns** to test STL, Prophet, and hybrid approaches.
* Evaluate **multi-step forecasts** and prediction intervals.
* Compare **other ML models** like CatBoost or deep learning LSTMs.
* Optimize hyperparameters for **robust model comparison**.

---

## 🔹 License

This project is licensed under the MIT License. 📝

---

## 🔹 Contact

Created with ❤️ by [Your Name]
GitHub: [https://github.com/yourusername](https://github.com/yourusername)
