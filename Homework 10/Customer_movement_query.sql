
with data_set as (
select 
* from  ( select
    CUST_CODE,
    BASKET_ID,
    SHOP_DATE,
    FORMAT_DATE('%Y%m', 
        PARSE_DATE('%Y%m%d',cast(SHOP_DATE as string) ) ) as date_month,
    row_number() over( partition by SHOP_DATE, BASKET_ID,CUST_CODE order by CUST_CODE ) as rn 
from  `crmproject-308203.crmrangsarid.supermarket` 
where CUST_CODE is not null ) as rnn
where rnn.rn = 1
),
frist_last_purchase as (
	select CUST_CODE ,
			MiN(SHOP_DATE) as frist_p,
			MIN(date_month) as frist_m_p,
			max(SHOP_DATE) as last_p,
			max(date_month) as last_m_p
	from data_set
	group by  CUST_CODE 
), 
lag_lead as (
	select * ,
			DATE_DIFF( date (PARSE_DATE('%Y%m%d',cast(f_SHOP_DATE_MONTH as string))),  
				 date (PARSE_DATE('%Y%m%d',cast( previous_month as string))), Month ) as Date_diff_Pr,
			DATE_DIFF ( date (PARSE_DATE('%Y%m%d',cast(next_month as string))),  
				date (PARSE_DATE('%Y%m%d',cast( f_SHOP_DATE_MONTH as string))), Month ) as Date_diff_Next_M,         
from (
select 	*,
		LAG( f_SHOP_DATE_MONTH,1) OVER (partition by CUST_CODE order by CUST_CODE, f_SHOP_DATE_MONTH  ASC ) as previous_month,
		LEAD( f_SHOP_DATE_MONTH,1) OVER (partition by CUST_CODE order by  CUST_CODE, f_SHOP_DATE_MONTH  ASC ) as next_month
--DATE_DIFF( date_month ,  date_month, Month) as PRE_CURRENT_Month
from (
		select 
		CUST_CODE,
		date_month,
		min(SHOP_DATE) as f_SHOP_DATE_MONTH
		from  data_set
		group by CUST_CODE,date_month ) as shop_frist_month
) as shop_frist_month)
, core_table_month as (
select 
	fl.CUST_CODE,
	fl.frist_p,
	ds.rolling_date
   from frist_last_purchase as fl
cross join (select distinct date_month as rolling_date from  data_set as ds ) as ds 
where ds.rolling_date  >=  substring( cast( fl.frist_p as string ),1,6)  
)
select  
	cast(rolling_date as numeric ) as month_year ,
	count( case when Customer_Status = 'New_Customer'  then Customer_Status end )  as New_customer,
	count( case when Customer_Status = 'Repeat_Customer'  then Customer_Status end ) as Repeat_Customer,
	count( case when Customer_Status = 'Reactive_Customer'  then Customer_Status end ) as Reactive_Customer,
	count(case when Customer_Status = 'Churn_Customer'  then Customer_Status end )*(-1) as Churn_Customer
from (
select 
*
,case when  f_SHOP_DATE_MONTH = frist_p and previous_month is null then 'New_Customer'
      when  previous_month is not null  and Date_diff_Pr =  1 then 'Repeat_Customer'
      when  previous_month is not null and Date_diff_Pr > 1 then 'Reactive_Customer'
      when date_month is null and previous_month_churn is not null then 'Churn_Customer' 
      else 'N/a'
      end as Customer_Status
from (
	select *
    ,LAG( date_month,1) OVER (partition by dd.CUST_CODE order by dd.CUST_CODE, rolling_date  ASC ) as previous_month_churn
from (
	select 
    ctm.CUST_CODE,
    frist_p,
    rolling_date,
    date_month,
    f_SHOP_DATE_MONTH,
    previous_month,
    next_month,
    Date_diff_Pr,
    Date_diff_Next_M,
	--,LAG( date_month,1) OVER (partition by ctm.CUST_CODE order by ctm.CUST_CODE, date_month  ASC ) as previous_month_churn
	row_number() over (partition by ctm.CUST_CODE order by rolling_date   ASC) as rn_before
from core_table_month as ctm 
left join  lag_lead as ll 
on ll.date_month = ctm.rolling_date
and ll.CUST_CODE = ctm.CUST_CODE
--where ctm.CUST_CODE = 'CUST0000341493'
where  1=1 
--and ll.CUST_CODE is null 
	) as dd
		) as dd
			) as final_ok
group by rolling_date
order by rolling_date




