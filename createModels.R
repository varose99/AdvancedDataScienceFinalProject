set.seed(4)

library(randomForest)

address <- "https://raw.githubusercontent.com/vrose99/AdvancedDataScienceFinalProject/8acd472133dda8bf77b87648d281237419c7fced/Data/chronic_kidney_disease.csv"
raw_data <- read.csv(address)
filtered_data <- raw_data[rowSums(is.na(raw_data[ , 1:25])) == 0, ]


test_inds <- sample(1:nrow(filtered_data), floor(0.2 * nrow(filtered_data)))
train <- filtered_data[-test_inds, ]
test <- filtered_data[test_inds, ]

# rf_model <- randomForest(class ~ ., data=train, ntree=100, mtry=2, importance=TRUE)
rf_model <- randomForest(train[ ,-25], as.factor(train[ ,25]), test[ ,-25], as.factor(test[ ,25]))
rf_model

# rf_model$test$predicted
# test$class

err <- 0
for (i in 1:length(test$class)) {
  if (test$class[i] != rf_model$test$predicted[i]) {
    err <- err + 1
  }
}
print(1 - (err/length(test$class)))

# Actual code to save the model to be used, everything above is for testing
rf_model <- randomForest(filtered_data[ ,-25], as.factor(filtered_data[ ,25]))
save(rf_model, file="randomForestModel.Rdata")






