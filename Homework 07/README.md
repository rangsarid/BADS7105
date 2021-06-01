<h2>The Report Appendix</h2>
<p><strong>Data stored : </strong>the lastest 60 days&nbsp; (N-1) day&nbsp; &nbsp; <span style="color: #ff0000;">*N = Current date</span></p>
<p><strong>Data Refresh : </strong>Daily refresh at 10:00 AM&nbsp;</p>
<p><strong>How to use</strong>&nbsp;:&nbsp;</p>
<p>&nbsp;1) Selected specified parameter&nbsp;</p>
<ul>
<li><strong>Partner_id</strong> -&gt; partner ID</li>
<li><strong>Partner_name</strong> -&gt; partner name</li>
<li><strong>Promotion name</strong> -&gt; promotion name</li>
<li><strong>Order date</strong> -&gt; Order date</li>
<li><strong>Sku name</strong> -&gt; Name of sku product&nbsp;</li>
<li><strong>Order status</strong> -&gt; Status of order&nbsp;</li>
<li><strong>Expected</strong> :
<ul>
<li>IF: Yes&nbsp;
<ul>
<li>Expected to have promotions dropped which RSP &ne; SP or SP &ne; Offering Price</li>
</ul>
</li>
<li>IF: No
<ul>
<li>Not Expect to have promotions dropped (orders not participating in promotions ) have SP = RSP and have not promotion keys&nbsp;</li>
</ul>
</li>
</ul>
</li>
<li><strong>Dropped</strong> :
<ul>
<li>IF: Yes
<ul>
<li>The order which has a promotion registered aCommerce system&nbsp;</li>
</ul>
</li>
<li>IF: No
<ul>
<li>The order which has not&nbsp; a promotion registered aCommerce system</li>
</ul>
</li>
</ul>
</li>
<li><strong>Price Matched</strong> :&nbsp;
<ul>
<li>IF: Yes
<ul>
<li>Orders with promotions dropped and SP = Offer Price + Orders don&rsquo;t have promotion (SP = RSP)</li>
</ul>
</li>
<li>IF: No
<ul>
<li>Orders with promotions dropped but SP &ne; Offer Price</li>
</ul>
</li>
</ul>
</li>
</ul>
<p>2) <strong>Measure</strong> :&nbsp;<br />&nbsp; &nbsp; &nbsp; &nbsp;<strong>Accuracy</strong>:&nbsp;percentage of orders with promotions expected to have promotions dropped that price is matched (SP = Offer Price ) include with orders that don&rsquo;t have a promotion at RSP = SP</p>
<p>3) <strong>Exporting Report</strong>:&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1. Holding the top right on the table.&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2. Click "More Option".</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3. Select "Export data".</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4. Select file type to export.&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5. Export file.&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>
<p>&nbsp;</p>
