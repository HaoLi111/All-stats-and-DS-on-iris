#is setosa?

iris_setosa = within(iris,{
  is_setosa = factor(ifelse(Species=='setosa',1,0))
})
iris_setosa$Species=NULL
iris_setosa

model_knn=train(is_setosa~.,data =iris_setosa,
                 method = 'knn')
model_knn
plot(model_knn)

confusionMatrix(predict(model_knn),iris_setosa$is_setosa,positive = '1')



predict(model_knn,type = 'prob')
