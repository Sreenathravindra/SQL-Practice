use retail;

select year(order_date),month(order_date),monthname(order_date),sum(total_price) from sales
group by year(order_date), month(order_date),monthname(order_date)
order by sum(total_price) desc;
