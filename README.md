# Goal

- First meeting w/ Prof. Zhu: early November where we discuss primilnary results and make sure the data is ready for analysis
- Second meeting w/Prof. Zhu: after the fall break we discuss outline


## Write a machine-learning algorithm to classify the categories of the posts and trending searches

- Explained what the end goals of the algorithm look like.
- The computer can pick up the common characteristics of the posts in the hand-coded labels and be able to do it automatically. (supervised learning)


## Code more information about the trending searches
- What's our X, features of the trending searchs? (piexel)
- Attributes of X: readership, discussion posts, top 10 comments from the most commented/leading Weibo posts under that trending search harshtag


## Meeting memo 10/12
- Web-scrapping to extend what we have for the attributes of X: 主持人、热度、讨论度、置顶post、置顶post下排行前10的评论
- With the host, we are able to distinguish which trending searches are ininitiated by the state-owned media. We are able to point out the causal arrow: Do media respond or do they initiate?
- Look into `brandwatch`
- Check methods and tools in addition to bag-of-words & jieba package
