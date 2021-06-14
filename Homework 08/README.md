## Homework 8 | Campaign Response
**Objective :** Improvement Model accuracy rate and baseline model performance by machine learning techniques </br>
**Name :** Rangsarid Pringwanid  </br>
**ID :** 62010422038 </br>
**Dataset :**  Campaign Response.csv and Transaction.csv file 

### Data Exploratory 
**Show distirbuted total amount by  frequency transaction** </br>
![Screenshot](Hw8_img/distributed.png) 

**Show series total amount and total customer by  datetime** </br>
![Screenshot](Hw8_img/date_amount.png) 

**Show Imbalance campaign response data with label** </br>
![Screenshot](Hw8_img/Campaign_res.png) 

## Model Imprementation 
#### Feature Enginerring 
  Created relevant feature as below </br>
  1. AOU </br>
  2. NO.transaction on Weekend/Weekday </br>
  3. No.transaction on  Size of Amount (S,M,L) </br>
  4. No.date between previous purchased
  5. monetary_value
  6. Frequency

**show Correlation between features** 
![Screenshot](Hw8_img/heatmap.png) 


### Data Re-sampling 
  1. Under Sampling
  2. Over Sampling
  3. SMOTE
  4. SMOTE-Tomek Links

### Models
  1. Logistic Regression
  2. XG-Boost
## Model Tuning 
   Cross validation with StratifiedKFold 10 Folds
   
## Result    
  
  
  
  



