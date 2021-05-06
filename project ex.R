data3<- data %>%
  full_join(data2, seqn = seqn)
data <- sasxport.get("/Users/carljia/Downloads/SMQ_J.XPT")
data2<- sasxport.get("/Users/carljia/Downloads/DPQ_J.XPT")
data_a <- sasxport.get("/Users/carljia/Downloads/ALQ_J.XPT")
data_all <- data3 %>%
  full_join(data_a, seqn = seqn)
data_diet <- sasxport.get("/Users/carljia/Downloads/DBQ_J.XPT")
data_all <- data_all %>%
  full_join(data_diet,seqn=seqn)

final_data<- select(data_all,c(seqn,smq040,dpq020,alq121,dbq700))
lm(dpq020 ~., data = final_data)
write.xlsx(final_data, "/Users/carljia/Desktop/2338/dat.xlsx")