<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Product Recommendation&nbsp;&nbsp;| Homework 7</strong></p>
<p><strong>Topic:&nbsp;</strong>Product Recommendation</p>
<p><strong>Dataset:&nbsp;</strong>Customer Survey with study in class BADS CRM Analytics</p>
<p><span style="text-decoration: underline;">Sample Dataset</span>&nbsp; : dataset has missing values</p>
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
<h2 id="Market-Basket-Analysis">Market Basket Analysis</h2>
<h3 id="Association-rule-&amp;-Frequent-Items-set">Frequent Items set</h3>
<p>Find frequency of Item A or the combination of frequency of items A and B together in the total number of transactions&nbsp;&nbsp;that measure by support score with minimum suport = 0.5 if support = 1 mean the item or those combination was ouccured frequency with all of transactions&nbsp;</p>
<p><img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Top10_support_table.png" /></p>
<h2 id="Show-top-10-frequent-items-set--2-items-by-support-score">Show top 10 frequent items set 2 items by support score</h2>
<p>Hear show the top 10 frequent items set 2 item . Example&nbsp; (ครีมกันแดด, กระเป๋า) have support score =&nbsp; 1 that mean this item set was occurred every transactoins</p>
<p><img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Top10_support_table_len_2.png" /></p>
<p>&nbsp;</p>
<p>Visualize with bar chart show top 10 with 2 items set &nbsp;</p>
<p><img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Top10_support_len2.png" /></p>
<h2 id="Show-top-10-frequent-item-set--3-items-by-support-score">Show top 10 frequent items set 3 items by support score</h2>
<p>Hear show the top 10 frequent items set 3 items . Example (ครีมกันแดด, โรตี, ชาบู) have support score =&nbsp;0.956522&nbsp;that mean this item set was occurred Almost all of transactoins</p>
<p>&nbsp;</p>
<p><img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Top10_support_len3.png" /></p>
<p><strong>Association Rules&nbsp;</strong></p>
<p>Running a market basket analysis. Here is the visualization of 1-itemset association rules (filtered by Support &gt; 0.5 and Lift &gt; 1.05) Nodes represent items and directed edges represent rules (antecedents ➞ consequents). Edge labels annotate Lift values. Note that for 1-to-1-itemset, both directions of rules (A➞B, B➞A) have the same lift values, so in this case, we always have bi-directional edges (A⬌B).</p>
<p>association rule with items A to item B (1➞1)</p>
<p>association rule with items set of (A,B) to item C (2➞1)</p>
<p>association rule with items set of (A,B,C) to item D (3➞1)</p>
<p>&nbsp;</p>
<p>Hear is Graph visualize show the edge relationship between 1-to-1 itemset&nbsp;&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/graph_item_1_1.png" /></p>
<p>Visual Result :&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Support_vs_confidence.png" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/Support_vs_lift.png" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/lift_VS_confident.png" /></p>
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
<p>Matrix showing a similarity item by cosine similarity score with the item that has item rating on each user. the highest similarity scores are 1 when items A and B rating by the whole user .Otherwise similarity score has decreased by cosine distance .</p>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/matrix finding similarity.png" /></div>
<div class="text_cell_render rendered_html" dir="ltr" tabindex="-1">&nbsp;</div>
<div class="text_cell_render rendered_html" dir="ltr" tabindex="-1">
<h2 id="Graph-network-show-the-relationship-on-each-pair-of-items-by-similarity-score">Graph network show the relationship on each pair of items by similarity score</h2>
<p>We could recommend items based on item similarity. Filtering the similarity using 0.75 threshold, and visualize them in graph. A node represents an item. Edge thickness and color represent cosine similarity between 2 items.</p>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="https://github.com/rangsarid/BADS7105/blob/main/Homework%2007/collaborative.png" /></div>
</div>
</div>
