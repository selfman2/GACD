README for run_analysis.R 
========================================================
Author: Bernhard Thoni
Date: 19.06.2014
Version: v01

My script tidies and aggregates the data of the course project.

Prerequisite: 
Original Data files downloaded to R working directory 
(as described in the CodeBook.md; does not need to be unzipped,
as my script takes care of this)

In the following the distinct steps, as notated in the script, are described in more detail:

Assumption: 
- as X-data, y-data and subject-data have the same length/size in train-subdirectory
  (as well, as a distinct, but same length in test-directory), they can be merged in 
   1 big dataset, comprising the whole data in one big table

Step 0: Load a necessary library, for the latter "select" function, used for subsetting

Step 1: the data file gets unzipped

Step 2: the original column names get read from features.txt
          as well, as all the train and test data (each has 3 differnt files:
          1 for the subject, 1 for the predictor variables X, and one for the predicted variable y

Step 3: subject and activity column get concatenated vertically to the matrix X (both in train and test)
          and finally, those both get concatenated horizontally into one big dataframe
          
Step 4: select from the futile.matrix package is used to subset the big dataframe.
          only those columns remain, that have word "std" or "mean" in their column wording
          
Step 5: the official activity labels from activity_labels.txt get joined into the big dataframe

Step 6: here, the aggregation happens: all the mean and std columns from the dataframe get aggregated
          along subject and activity by the mean-aggregation
          
Step 7: with regular expressions the column names get tidied (as juxtaposed in the Codebook.md); used method: gsub;
        although the column names seem pretty long, they dont have special characters in it, and are < 128 chars

Step 8: the tidy dataset is named merged_result_final, and written as file "UCI_HRA_dataset___tidy.txt" to the R working directory for further analysis in R or Excel, or something else
