
library(caret)
library(doParallel)
getDoParWorkers()
modelLookup("AdaBoost.M1")
#set.seed(42)
system.time({
  tune_adaboost = train(Species~.,data = iris,
                        method ="AdaBoost.M1",
                        tuneGrid = expand.grid(mfinal = 2:10,
                                               maxdepth = 2:4,
                                               coeflearn = c("Breiman",
                                                             "Freund")))
  
})

saveRDS(tune_adaboost,"tune_adaboost.RDS")
plot(tune_adaboost)
