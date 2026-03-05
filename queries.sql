 select*from customers;
 select*from products;
select*from orders;
select sum(total_amount) as total_sales from orders;
select count(order_id)as total_orders from orders;
select c.customername,sum(o.total_amount)as total_spent
from orders o
join customers c on o.customer_id=c.customer_id
group by c.CUSTOMER_ID;
select c.customername,sum(o.total_amount)as total_spent
from orders o
join customers c on o.customer_id=c.customer_id
group by c.CUSTOMERNAME
ORDER by total_spent DESC
limit 1;
SELECT O.ORDER_ID, C.CUSTOMERNAME,
o.order_date, o.total_amount
from orders o 
join customers c on o.customer_id=c.customer_id;
SELECT O.ORDER_ID,P.PRODUCTNAME,O.QUANTITY,O.TOTAL_AMOUNT FROM ORDERS O 
JOIN PRODUCTS P ON O.PRODUCT_ID=P.PRODUCT_ID;
select max(TOTAL_AMOUNT) from orders ;
SELECT P.PRODUCTNAME, O.TOTAL_AMOUNT, QUANTITY FROM ORDERS O JOIN PRODUCTS P
ON O.PRODUCT_ID = P.PRODUCT_ID
 WHERE O.TOTAL_AMOUNT=( SELECT MAX(TOTAL_AMOUNT) FROM ORDERS);
 SELECT P.PRODUCTNAME,  SUM(O.TOTAL_AMOUNT)
 AS REVENUE FROM ORDERS O 
 JOIN PRODUCTS P ON O.PRODUCT_ID=P.PRODUCT_ID GROUP BY P.PRODUCTNAME;
 SELECT P.PRODUCT_ID,P.PRODUCTNAME, SUM(O.TOTAL_AMOUNT)
 AS REVENUE FROM ORDERS O 
 JOIN PRODUCTS P ON O.PRODUCT_ID=P.PRODUCT_ID GROUP BY P.PRODUCT_ID,P.PRODUCTNAME;
 SELECT SUM(O.QUANTITY* P.PRICE)
 AS TOTAL_REVENUE FROM ORDERS O 
 JOIN PRODUCTS P ON O.PRODUCT_ID=P.PRODUCT_ID;
SELECT month (O.ORDER_DATE)  as month,sum(o.quantity*p.price)
 AS monthly_revenue FROM ORDERS O 
 JOIN PRODUCTS P ON O.PRODUCT_ID=P.PRODUCT_ID
  SELECT P.PRODUCT_ID,P.PRODUCTNAME,SUM(oi.QUANTITY)
AS TOTAL_SOLD FROM orders_items oi
join products p on oi.product_id = p.product_id
 group by p.product_id,p.productname
 order by total_sold desc 
 limit 3;
select avg(quantity) as avg_order_quantity from orders;
select p.productname,avg (o.quantity) as avg_quantity from orders o 
join products p on o.product_id = p.product_id
group by p.productname;
select*from payment
where payment_status!='complted';
select c.cityname, sum(oi.quantity*oi.price) as city_revenue
from customers c join orders o on c.customer_id=o.customer_id
join orders_items oi on o.order_id=oi.order_id
group by c.cityname
order by city_revenue desc;
select c.customer_id,c.CUSTOMERNAME 
from customers c 
left join orders o on c.customer_id=o.customer_id
where o.order_id is null;
select p.product_id,p.productname from products p
left join orders_items oi 
on p.product_id =oi.product_id where oi.product_id is null;
select c.customername,o.order_id from customers c
inner join orders o 
on c.customer_id=o.CUSTOMER_ID;
select CUSTOMERNAME, order_id
from customers c 
left join orders o 
on c.customer_id=o.customer_id;
 group by month(O.ORDER_DATE)
 ORDER BY month;
