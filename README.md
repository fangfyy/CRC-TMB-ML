# CRC-TMB-ML
Machine Learning-Driven Estimation of Tumour Mutational Burden Highlights DNAH5 as a Prognostic Marker of Colorectal Cancer


* Lasso Regression Model: eps = 0.001, alphas = 10.
* ElasticNetCV Model: l1_ratio =0.9, max_iter = 10000, eps = 0.001, n_alphas = 10.
* XGBoost Regression Model: tree_method = gpu_hist, max_depth = 2, n_estimators = 500, learning_rate = 0.05, min_child_weight = 4, gamma = 0.1, subsample = 0.8, colsample_bytree = 0.6, reg_alpha = 1, reg_lambda = 0.05.
* RandomForest Regressor Model: n_estimators = 300, min_samples_split = 5, min_samples_leaf = 2.
* RFE: step = 6.
* SVR: kernel = linear, gamma = auto.
* For Linear and Ridge Regression models, we found that the default parameters yielded the best results in our dataset and hence, were retained.
