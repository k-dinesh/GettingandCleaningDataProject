CODEBOOK for Getting and Cleaning Data Project

The tidy data set file "tidydata.csv" contains below 68 variables in the order

Subject
	It is a factor variable and its values range from '01' to '30'. Each value denotes one subject code. The subject variable has been extracted from the below two raw data files.
"subject_test.txt"
"subject_train.txt"
The one digit subject values from "1" to "9" has been converted to two digit values by prefixing "0".
	
Activity
	It is a factor variable with the following values to denote the activity.
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING
	The values from the raw files "y_test.txt" and "y_train.txt" has been extracted and transformed into activity variable based on the mapping provided in the raw file "activity_labels.txt"

tbodyacc-mean()-x          
tbodyacc-mean()-y 
tbodyacc-mean()-z 
tbodyacc-std()-x      
tbodyacc-std()-y      
tbodyacc-std()-z      
tgravityacc-mean()-x
tgravityacc-mean()-y
tgravityacc-mean()-z
tgravityacc-std()-x     
tgravityacc-std()-y     
tgravityacc-std()-z     
tbodyaccjerk-mean()-x
tbodyaccjerk-mean()-y
tbodyaccjerk-mean()-z
tbodyaccjerk-std()-x     
tbodyaccjerk-std()-y     
tbodyaccjerk-std()-z     
tbodygyro-mean()-x     
tbodygyro-mean()-y        
tbodygyro-mean()-z        
tbodygyro-std()-x          
tbodygyro-std()-y         
tbodygyro-std()-z        
tbodygyrojerk-mean()-x
tbodygyrojerk-mean()-y
tbodygyrojerk-mean()-z
tbodygyrojerk-std()-x     
tbodygyrojerk-std()-y     
tbodygyrojerk-std()-z     
tbodyaccmag-mean()      
tbodyaccmag-std()          
tgravityaccmag-mean() 
tgravityaccmag-std()      
tbodyaccjerkmag-mean()
tbodyaccjerkmag-std()     
tbodygyromag-mean()      
tbodygyromag-std()         
tbodygyrojerkmag-mean()
tbodygyrojerkmag-std()    
fbodyacc-mean()-x          
fbodyacc-mean()-y         
fbodyacc-mean()-z        
fbodyacc-std()-x           
fbodyacc-std()-y           
fbodyacc-std()-z           
fbodyaccjerk-mean()-x 
fbodyaccjerk-mean()-y 
fbodyaccjerk-mean()-z 
fbodyaccjerk-std()-x      
fbodyaccjerk-std()-y      
fbodyaccjerk-std()-z      
fbodygyro-mean()-x      
fbodygyro-mean()-y      
fbodygyro-mean()-z      
fbodygyro-std()-x          
fbodygyro-std()-y          
fbodygyro-std()-z          
fbodyaccmag-mean()   
fbodyaccmag-std()        
fbodybodyaccjerkmag-mean()
fbodybodyaccjerkmag-std()  
fbodybodygyromag-mean()  
fbodybodygyromag-std()     
fbodybodygyrojerkmag-mean()
fbodybodygyrojerkmag-std() 

All the above variables hold mean value of the corresponding variables from "X_test.txt" and "X_train.txt" files. It contains average of each variable for each activity for each subject. They contain both negative and positive numerical values with eight decimal places.
