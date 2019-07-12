
library(caret)
library(doParallel)
registerDoParallel(4)
getDoParWorkers()
modelLookup('rf')
system.time({
  tune_rf = train(Species~.,data = iris,
                        method ="rf",metric = "Kappa",
                        tuneGrid = expand.grid(mtry = 2:4))
  
})
saveRDS(tune_rf,'tune_rf.rds')


system.time({
  tune_c50 = train(Species~.,data = iris,
                  method ="C5.0",metric = "Kappa",
                  tuneGrid = expand.grid(model ='tree',
                                         trials = (1:4)*10,
                                         winnow = F))
  
})
saveRDS(tune_c50,'tune_c50.rds')





tune_rf$results
class(tune_rf)
plot(tune_rf,output = 'layered')


tune_c50$results
plot(tune_c50)

tune_adaboost$results
plot(tune_adaboost)
