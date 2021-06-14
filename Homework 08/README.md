## Homework 8 | Campaign Response
**Objective :** Improvement Model accuracy rate and baseline model performance by machine learning techniques </br>
**Name :** Rangsarid Pringwanid  </br>
**ID :** 62010422038 </br>
**Dataset :**  Campaign Response.csv and Transaction.csv file </br> 
**Colab notebook :**   [Campaign Response](https://colab.research.google.com/drive/1Or1rr0r46I23JxAWh4N1eBPQoYzkoyLJ#scrollTo=PmAzfXwhHTgo). </br>
**note_book :** </br>

### Data Exploratory 
**Show distirbuted total amount by  frequency transaction** </br>
![Screenshot](Hw8_img/distributed1.png) 

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
- Logistic Regression  </br>

|  model  |	resampler   |	train-mean |	train-min |	train-max | test-mean |	test-min |	test-max |
| --- | --- | --- | --- | --- | --- | --- | --- | 
| logistic | undersampler |	 0.62    | 0.60       |  0.63      |  0.61    |	 0.58    |   0.65    |
| logistic	| oversampler	|      0.62	   | 	    0.61      |    0.63      |     0.62    |	  0.59      |    0.65     |
| logistic	| smote	      |      0.62  | 	 0.60    |    0.63   |   0.61    |		  0.59      |     0.65    |
| logistic	| smote-tomek	 |      0.62 	   | 	  0.61    |	  0.63    |    0.62  |	  0.59 |   0.64  |
  
- XG-Boost  </br>
  
|  model  |	resampler   |	train-mean |	train-min |	train-max | test-mean |	test-min |	test-max |
| --- | --- | --- | --- | --- | --- | --- | --- | 
| XG-Boost | undersampler |	 0.62    | 0.60       |  0.65      |  0.60    |	 0.56   |   0.64    |
| XG-Boost	| oversampler	|      0.67 	   | 	    0.65      |    0.69      |     0.64    |	  0.61      |    0.68     |
| XG-Boost	| smote	      |      0.90  | 	 0.89    |    0.90   |   0.89    |		  0.88      |     0.90    |
| XG-Boost	| smote-tomek link	 |      0.90	   | 	  0.89    |	  0.90    |    0.89  |	  0.87 |   0.91  |
  
## Conclusion 
  Base on  above accuracy result table at XG-Boost model and Re-sampling by SMOTE provide the best perfromance of model  at accuracy 0.88-0.90 
and cross vadiation approach can be increased the model performance and model accuracy.  

    


