
Trending searches on Sina Weibo from November 2019 to December 2020. The full sample size is around 41,497. For this training data, I randomly selected 10,000 and labeled them in 20 categories. Trending searches may not pop up all the 20 categories. 

Now it's boiled down to 4 broad categories, 13 lower level categories.


N of 5 major state media's social media posts:
People's Daily: 23,341
Xinhua: 17,692
CCTV: 17,947
共青团: 6,655
紫光阁: 5,168

Total：N=70,799


## Now 2 files for prediction:

09. Combined5news_for_labeling_0717

10. Trendingsearch_for_labeling_0717


## File explanations
01. **Training data_combined_4Labels.csv** is the original true labels one with both sources.  

02. **Training data_Trendingsearch_4Labels.csv** has only the trending search true labels. 

03. **Training data_Media posts_4Labels_truncatedcontent0722.csv** has the media posts only. 

04. **Trendingsearch_for_labeling_0717.csv** is the total file for prediction, some of which has true labels but others are waiting for the machine to attach labels. 

05. Combined5news.md is where I put the google drive link. The csv. file of the total five media news for prediction is too big.


### Two files with media response variables:

#### Two tpes of responses:
- 1. Keywords: using government agencies as keywords in the trending searches. 
- 2. Using the Standard Levenshtein distance between social media posts and trending searches (the most conservative, minimal distance) to do the matching.

06. **Trendingsearch_for_labelling_final_3matches.csv** adds the state media response variables (`match.all`). True labels (`Training0.1.2`==1 or 2) are specified. N=41,497

07. **Trendingsearch_for_labelling_onlymatchingwithmedia_tolabel.csv** contains the posts responded by the state media only. N=7,011. `Training0.1.2`: `2` means the most recent coding. `1` means in the training data with true labels. `0` requires labelling. 


### For analysis:

#### Text only .txt. file:
08. **Trendingsearch_all_textonly.txt** contains all the trending searches with main text only. Used to create document matrix.

12. **trendingsearch_800 tokens**: start of the text analysi -- data-token matrix. stored in https://drive.google.com/file/d/1SHZBNQwnvdwILnxucjQl0jeIV4oEDYS3/view?usp=sharing

### Trending Search labels predicted and a bunch of additional variables added in the second round of coding:

11. **Trendingsearch_for_labelling_completedata**: stored in https://drive.google.com/file/d/1IvNa0rLbXvimqwgLmZZj3VNHJ72xKKdp/view?usp=sharing

