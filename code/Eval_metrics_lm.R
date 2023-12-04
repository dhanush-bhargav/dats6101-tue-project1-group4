#some more equaltion metrics 

mae <- mean(abs(predictions - test_data$years_of_experience))
cat("Mean Absolute Error (MAE):", mae, "\n")

r_squared <- 1 - (sum((test_data$years_of_experience - predictions)^2) / sum((test_data$years_of_experience - mean(test_data$years_of_experience))^2))
cat("R-squared (R2) Score:", r_squared, "\n")

n <- nrow(test_data)
p <- length(coef(lm_model_new)) - 1  # Number of predictors
adj_r_squared <- 1 - ((1 - r_squared) * (n - 1) / (n - p - 1))
cat("Adjusted R-squared:", adj_r_squared, "\n")



#some more equaltion metrics with interaction term 
mae <- mean(abs(predictions - test_data1$years_of_experience))
cat("Mean Absolute Error (MAE):", mae, "\n")

r_squared <- 1 - (sum((test_data1$years_of_experience - predictions)^2) / sum((test_data1$years_of_experience - mean(test_data$years_of_experience))^2))
cat("R-squared (R2) Score:", r_squared, "\n")

n <- nrow(test_data)
p <- length(coef(lm_model_new)) - 1  # Number of predictors
adj_r_squared <- 1 - ((1 - r_squared) * (n - 1) / (n - p - 1))
cat("Adjusted R-squared:", adj_r_squared, "\n")

#evaluation metrics for random forest

mae_rf <- mean(abs(predictions_rf - test_data$years_of_experience))
cat("Random Forest Mean Absolute Error (MAE):", mae_rf, "\n")


mse_rf <- mean((predictions_rf - test_data$years_of_experience)^2)
cat("Random Forest Mean Squared Error (MSE):", mse_rf, "\n")


rmse_rf <- sqrt(mse_rf)
cat("Random Forest Root Mean Squared Error (RMSE):", rmse_rf, "\n")


r_squared_rf <- 1 - (sum((test_data$years_of_experience - predictions_rf)^2) / sum((test_data$years_of_experience - mean(test_data$years_of_experience))^2))
cat("Random Forest R-squared (R2) Score:", r_squared_rf, "\n")




