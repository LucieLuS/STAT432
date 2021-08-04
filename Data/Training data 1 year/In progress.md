
Trending searches on Sina Weibo from November 2019 to December 2020. The full sample size is around 41,497. For this training data, I randomly selected 10,000 and labeled them in 20 categories. Trending searches may not pop up all the 20 categories. 

Now it's boiled down to 4 broad categories, 13 lower level categories.


N:
People's Daily: 23,341
Xinhua: 17,692
CCTV: 17,947
共青团: 6,655
紫光阁: 5,168

Total：70,799


## Now 2 files for prediction:

Combined5news_for_labeling_0717

Trendingsearch_for_labeling_0717


## File explanations
Training data_combined_4Labels.csv is the original true labels one with both sources.  

Training data_Trendingsearch_4Labels_csv.csv has only the trending search true labels. 

Training data_Media posts_4Labels_truncatedcontent0722_csv.csv has the media posts only. 

Trendingsearch_for_labeling_0717.csv is the total file for prediction, some of which has true labels but others are waiting for the machine to attach labels. 

Combined5news.md is where I put the google drive link. The csv. file of the total five media news for prediction is too big.

Trendingsearch_for_labelling_onlymatching.csv contains the posts responded by the state media.
