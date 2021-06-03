<p style="padding-left: 30px; text-align: center;"><strong>Product Recommendation&nbsp;&nbsp;| Homework 7</strong></p>
<p><strong>Topic:&nbsp;</strong>Product Recommendation</p>
<p><strong>Dataset:&nbsp;</strong>Customer Survey with study in class BADS CRM Analytics</p>
<p><strong><span style="text-decoration: underline;">Sample Dataset</span></strong>&nbsp; : The dataset has missing values</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/sample_data.png" /></p>
<p>Missing and Duplicated Handling :</p>
<ul>
<li>Remove missing values</li>
<li>Remove duplicated columns value&nbsp; (<span style="color: #ff0000;">'เครื่องย่อยกระดาษ'</span>)</li>
</ul>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/duplicated_values.png" /></p>
<p>Encoding value&nbsp;</p>
<p>'Yes' =&gt; 1&nbsp; , 'No' =&gt; 0&nbsp;</p>
<p>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/encode.png" /></p>
<p><strong>Exploratory data analysis &nbsp;(EDA)</strong></p>
<p>&nbsp;</p>
<p style="padding-left: 270px;"><img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Distribution.png" /></p>
<p style="padding-left: 270px;">&nbsp;</p>
<ul>
<li>Left hand side show distribution with&nbsp; histogram graph&nbsp; with&nbsp; frequency of use/purchase items</li>
<li>Right hand side show top 10&nbsp;use/purchase items</li>
</ul>
<p>&nbsp;</p>
<h2 id="Market-Basket-Analysis">Market Basket Analysis</h2>
<h3 id="Association-rule-&amp;-Frequent-Items-set">Frequent Items set</h3>
<p>Find frequency of Item A or the combination of frequency of items A and B together in the total number of transactions&nbsp;&nbsp;that measure by support score with minimum suport = 0.5 if support = 1 mean the item or those combination was ouccured frequency with all of transactions&nbsp;</p>
<p style="padding-left: 270px;"><img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Top10_support_table.png" /></p>
<h2 id="Show-top-10-frequent-items-set--2-items-by-support-score">Show top 10 frequent items set 2 items by support score</h2>
<p>&nbsp; Here is show the top 10 frequent items set 2 items . Example&nbsp; <span style="color: #ff0000;">(ครีมกันแดด, กระเป๋า)</span> have support score =&nbsp; 1 that mean this item set&nbsp; occurred every transactions</p>
<p style="padding-left: 270px;"><img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Top10_support_table_len_2.png" /></p>
<p>&nbsp;</p>
<p>Visualize with bar chart show top 10 with 2 items set &nbsp;</p>
<p style="padding-left: 270px;"><img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Top10_support_len2.png" /></p>
<h2 id="Show-top-10-frequent-item-set--3-items-by-support-score">Show top 10 frequent items set 3 items by support score</h2>
<p>&nbsp; &nbsp;Here is show the top 10 frequent items set 3 items. Example <span style="color: #ff0000;">(ครีมกันแดด, โรตี, ชาบู)</span> have support score =&nbsp;0.956522&nbsp;that means this item set occurred Almost all of transactions</p>
<p style="padding-left: 270px;"><img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Top10_support_table_len3.png" /></p>
<p>&nbsp;</p>
<p><strong>&nbsp;Visualize with bar chart show top 10 with 3 items set &nbsp;</strong></p>
<p style="padding-left: 270px;"><img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Top10_support_len3.png" /></p>
<p><strong>Association Rules&nbsp;</strong></p>
<p><strong>Find <strong>Association rule&nbsp;</strong>of items those are frequent&nbsp;<strong>items set at minimum support = 0.5&nbsp;and Lift &gt; 1.05&nbsp;</strong></strong></p>
<p>&nbsp;Here is association rule with items A to item B (1➞1). Note that for 1-to-1-itemset, both directions of rules (A➞B, B➞A) have the same lift values</p>
<p>&nbsp;</p>
<p>Here is association rule with items set of (A,B) to item C (2➞1)&nbsp;</p>
<p style="padding-left: 270px;"><img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/item_frequent_2_1.png" /></p>
<p>&nbsp;</p>
<p>Here is association rule with items set of (A,B,C) to item D (3➞1)&nbsp;</p>
<p>&nbsp;</p>
<p style="padding-left: 270px;"><img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Top10_frequent_3.png" /></p>
<p>&nbsp; &nbsp;Running a market basket analysis. Here is the visualization of 1-itemset association rules (filtered by Support &gt; 0.5 and Lift &gt; 1.05) Nodes represent items and directed edges represent rules (antecedents ➞ consequents). Edge labels annotate Lift values. Note that for 1-to-1-itemset, both directions of rules (A➞B, B➞A) have the same lift values, so in this case, we always have bi-directional edges (A⬌B).</p>
<p>Hear is Graph visualize show the edge relationship between 1-to-1 itemset&nbsp;&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/graph_item_1_1.png" /></p>
<p><strong>Visual Result :&nbsp;</strong></p>
<p><strong>1.Support vs Confident</strong></p>
<p><br />&nbsp; &nbsp; &nbsp;</p>
<p style="padding-left: 270px;">&nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Support_vs_confidence.png" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
<p><strong>2.Support vs lift</strong></p>
<p>&nbsp;</p>
<p style="padding-left: 270px;">&nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Support_vs_lift.png" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
<p><strong>3.Confident vs lift&nbsp;</strong></p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>
<p style="padding-left: 210px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/lift_VS_confident.png" /></p>
<p>&nbsp;</p>
<h2 id="Collaborative-Filtering---Item-Similarity">Collaborative Filtering - Item Similarity</h2>
<p>&nbsp; &nbsp;By using users' ratings for each item as its feature vector, use cosine to determint a similarity values for each pair of items. We could recommend items based on item similarity. Filtering the similarity using 0.65 threshold, and visualize them in graph. A node represents an item. Edge thickness and color represent cosine similarity between 2 items.</p>
<p>&nbsp;</p>
<div class="cell text_cell unselected rendered" tabindex="2">
<div class="inner_cell">
<div class="text_cell_render rendered_html" dir="ltr" tabindex="-1">
<h3 id="Create-matrix-finding-similarity">Create matrix finding similarity</h3>
</div>
</div>
</div>
<div class="cell text_cell unselected rendered" tabindex="2">
<div class="inner_cell">
<div class="text_cell_render rendered_html" dir="ltr" tabindex="-1">
<p>&nbsp; Matrix showing a similarity item by cosine similarity score with the item that has item rating on each user. the highest similarity scores are 1 when items A and B rating by the whole user .Otherwise similarity score has decreased by cosine distance .</p>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/matrix finding similarity.png" /></div>
<div class="text_cell_render rendered_html" dir="ltr" tabindex="-1">&nbsp;</div>
<div class="text_cell_render rendered_html" dir="ltr" tabindex="-1">
<h2 id="Graph-network-show-the-relationship-on-each-pair-of-items-by-similarity-score">Graph network show the relationship on each pair of items by similarity score</h2>
<p>&nbsp; We could recommend items based on item similarity. Filtering the similarity using 0.75 threshold, and visualize them in graph. A node represents an item. Edge thickness and color represent cosine similarity between 2 items.</p>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/collaborative.png" /></div>
<div class="text_cell_render rendered_html" dir="ltr" tabindex="-1"><strong>Conclusion :</strong></div>
<div class="text_cell_render rendered_html" dir="ltr" tabindex="-1">&nbsp; &nbsp; Refer the above network graph use thickness of edge to determine the similarity of items score by user rate . such as</div>
<ul>
<li class="text_cell_render rendered_html" dir="ltr" tabindex="-1">&nbsp;node <span style="color: #ff0000;">'ซาบู'</span> and node <span style="color: #ff0000;">'ครีมกันเเดด'</span> which have edge weight is 1.00 (similarity score =&nbsp; 1)&nbsp; . we would&nbsp; recommend 'ซาบู' voucher when customer bought <span style="color: #ff0000;">'ครีมกันแดด'&nbsp;</span></li>
<li class="text_cell_render rendered_html" dir="ltr" tabindex="-1">&nbsp;node <span style="color: #ff0000;">'กระเป๋า'</span> and node<span style="color: #ff0000;"> 'ครีมกันเเดด'</span> which have edge weight is 1.00 (similarity score =&nbsp; 1) .&nbsp;we would&nbsp; recommend 'ครีมกันแดด' promotion discount when customer bought 'กระเป๋า'&nbsp; etc.&nbsp;</li>
</ul>
</div>
</div>
