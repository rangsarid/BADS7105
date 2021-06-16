create or replace TABLE `crmproject-308203.crm_rangsarid.customer_new` AS
select aa.* ,MOD_BASKET
from (
    select  CUST_CODE , 
            COUNT(DISTINCT BASKET_ID) AS TOTAL_VISIT,
            sum(SPEND) as TOTAL_SPEND,
            AVG(SPEND) as TICKET_SIZE,
            STDDEV_POP(SPEND) as STD_SPEND,
            MIN(AGE) as Duration_LAST_SHOPDATE,
            MAX(AGE) as DUration_FIRST_SHOPDATE,
            max(AGE)-min(AGE) as LENGTH_STAY,
            (MAX(AGE) - MIN(AGE)) / COUNT(DISTINCT basket_id)  as AVG_TIME_TO_EVENT
    FROM
        (   
           select CUST_CODE,
           BASKET_ID,
           SPEND,
           PARSE_DATE('%Y%m%d', CAST(SHOP_DATE AS STRING)) as SHOP_DATE ,
           DATE_DIFF (DATE'2008-07-06', PARSE_DATE('%Y%m%d', CAST(SHOP_DATE AS STRING)), DAY) as AGE,
           LEFT( CAST (SHOP_DATE as string),6) as MONTH_YEAR  
           from `crmproject-308203.crmrangsarid.supermarket`
           where CUST_CODE is not null 
           ) as a
           GROUP by CUST_CODE                      
           ) as aa   
join           
    (select 
        CUST_CODE,
        case when BASKET_SIZE = 'S' Then 1 
             when BASKET_SIZE = 'M' Then 2
             else 3 end as MOD_BASKET
       from  (
            select         
                CUST_CODE,
                BASKET_SIZE,
                count( distinct BASKET_ID) as number_of_BK ,
                row_number()  over(partition by  CUST_CODE order by count(distinct BASKET_ID ) DESC) as rn 
                from  `crmproject-308203.crmrangsarid.supermarket`
                where CUST_CODE is not null     
                group by CUST_CODE,BASKET_SIZE )  as size
                where size.rn = 1
                 ) as MOD_SIZE
                on MOD_SIZE.CUST_CODE = aa.CUST_CODE