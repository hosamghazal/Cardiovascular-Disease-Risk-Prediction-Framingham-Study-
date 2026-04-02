# Cardiovascular-Disease-Risk-Prediction-Framingham-Study-
To build a predictive model that identifies patients at high risk for Coronary Heart Disease (CHD) over a 10-year period using clinical and behavioral data.
Dataset: Based on the Framingham Heart Study, a long-term, ongoing cardiovascular cohort study.
Data Partitioning: Utilized a 70/30 split to ensure the model was trained on a substantial dataset while maintaining a robust test set for validation.
Model Iterations: * Model 1: Initial Logistic Regression using all available predictors.
Model 2: A refined model focusing on the most statistically significant clinical drivers: male, age, cigsPerDay, sysBP, and glucose.

Evaluation & Risk Assessment

Confusion Matrix Analysis: Tested a specific classification threshold of 0.7. In medical contexts, adjusting the threshold is critical to balance "False Positives" against "False Negatives" (missing a high-risk patient).

Performance Metrics (ROCR): Generated an ROC Curve to evaluate the model's ability to distinguish between high-risk and low-risk patients. The curve helps determine the optimal cutoff point for medical intervention.
