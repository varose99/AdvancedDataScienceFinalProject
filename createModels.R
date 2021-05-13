set.seed(19)

library(randomForest)
library(ROCR)
address <- "https://raw.githubusercontent.com/vrose99/AdvancedDataScienceFinalProject/8acd472133dda8bf77b87648d281237419c7fced/Data/chronic_kidney_disease.csv"
raw_data <- read.csv(address)
filtered_data <- raw_data[rowSums(is.na(raw_data[ , 1:25])) == 0, ]


test_inds <- sample(1:nrow(filtered_data), floor(0.2 * nrow(filtered_data)))
train <- filtered_data[-test_inds, ]
test <- filtered_data[test_inds, ]

rf_model <- randomForest(train[ ,-25], as.factor(train[ ,25]), test[ ,-25], as.factor(test[ ,25]), keep.forest=TRUE)
rf_model




predictions <- as.numeric(predict(rf_model, test[,-25], type = 'response'))
pred <- prediction(predictions, test$class)
perf <- performance(pred, measure = "tpr", x.measure = "fpr")
auc <- unlist(performance(pred,"auc")@y.values)

save(perf, file = "perf.Rdata")
save(auc, file = "auc.Rdata")

save(rf_model, file="randomForestModel.Rdata")






