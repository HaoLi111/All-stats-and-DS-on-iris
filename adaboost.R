library(adabag)
library(doParallel)
registerDoParallel(6)
getDoParWorkers()


system.time({
 adaboost_iris = train(Species~.,data = iris,method = 'AdaBoost.M1')
})
saveRDS(adaboost_iris,"adaboost_iris.RDS")
#plot(adaboost_iris)
?set.seed
adaboost_iris
.Random.seed

modelLookup("AdaBoost.M1")
