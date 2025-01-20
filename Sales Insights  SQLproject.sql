Select * from sales.customers;
select * from sales.transactions;
select * from sales.markets;
select * from sales. date;
select * from sales.products;
select count(*) from sales.transactions;
select * from sales.transactions limit 5;
select * from sales.transactions where market_code="Mark001";
select count(*) from sales.transactions where market_code="Mark001";
select count(*) from sales.customers;
select * from sales.transactions where currency ="USD";
select sales.transactions .*, sales.date .* from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date;
select sales.transactions .*, sales.date .* from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year = "2020";

select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year = "2020" and sales.transactions.market_code="Mark001";

select distinct product_code from sales.transactions where market_code ="Mark001";
select distinct currency from sales.transactions;
'INR'
'INR'
'INR\r'
select count(*) from transactions where transactions.currency = 'INR\r' ;
select count(*) from sales.transactions where currency = 'INR';


select * from transactions where transactions.currency = 'USD' or transactions.currency = 'USD\r'  ;
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date on transactions.order_date=date.date
where date.year = 2020 and transactions.currency = "INR\r" or transactions.currency = "USD\r";

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date on transactions.order_date=date.date
where date.year = 2020 and date.month_name="January" and (transactions.currency = "INR\r" or transactions.currency = "USD\r");

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date on transactions.order_date=date.date
where date.year = 2020 and transactions.market_code ="Mark001";