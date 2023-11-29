# **Model training**

## Hyperparameter Tuning: We performed hyperparameter tuning for each model using the GridSearchCV function, which systematically works through multiple combinations of parameter tunes and cross-validate as it goes to determine which tune gives the best performance. This exhaustive search over the specified parameter values for an estimator aid in getting the best parameters for the model.

## Cross-validation: We employed a five-fold cross-validation strategy for each model. This approach ensures that the results we obtained are not due to a particular random split of the data, enhancing the generalizability of the model.

## Model-specific Parameters: You rightly pointed out the importance of sharing model-specific parameters, and here they are for some models we used:

### Lasso Regression Model: eps = 0.001, alphas = 10.

### ElasticNetCV Model: l1*ratio =0.9, max*iter = 10000, eps = 0.001, n*alphas = 10.*

### 3.3 XGBoost Regression Model: tree*method = gpu*hist, max*depth = 2, n*estimators = 500, learning*rate = 0.05, min*child*weight = 4, gamma = 0.1, subsample = 0.8, colsample*bytree = 0.6, reg*alpha = 1, reg*lambda = 0.05.

### RandomForest Regressor Model: n*estimators = 300, min*samples*split = 5, min*samples*leaf = 2.*

### RFE: step = 6.

### SVR: kernel = linear, gamma = auto.

### For Linear and Ridge Regression models, we found that the default parameters yielded the best results in our dataset and hence, were retained.

