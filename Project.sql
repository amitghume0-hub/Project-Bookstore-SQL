select * from books;

select * from customers;

select * from orders_N;

--Q.1 Retrive all books in the "Fiction" genre ?
select * from books 
    where genre in ('Fiction');


--Q.2 Find books published after the year 1950?
select * from books 
    where published_year >1950;


--Q.3 List all customers from canada?
select * from customers 
    where country = 'Canada';


--Q.4 Show orders placed in Nov 2023?
select * from orders_N
    where order_date between '01-NOV-23' and '30-NOV-23';


--Q.5 Retrieve total stocks of books available?
select sum(stock)Total_Stock 
    from books;



select * from customers;
select * from orders_N;
select * from books;

--Q.6 Find the details of the most expensive book?

select * from (select * from books order by price desc)
    where rownum=1;


--Q.7 Show all customers who orderd more than 1 quantity of a book?

select * from orders_N
    where quantity>1;

--Q.8 Retrive all orders where the total amount exceeds $20?

select * from orders_N
    where total_amount>20;


--Q.9 List all genres available in Book table?

select distinct(genre) 
    from books;


--Q.10 Find the book with lowest stock?

select * 
from (select * from books 
order by stock asc)
where rownum <=1;


--Q.11 Calculate the total revenue generated from all orders?

select sum(total_amount) as Revenue 
    from orders_N;


--Q.12 Retrieve total number of books sold for each genre?

select b.genre,
    sum(o.quantity) total_book_sold
    from orders_N o
    join books b
    on b.book_id = o.book_id
    group by b.genre;
    

--Q.13 Find average price of books in fantasy genre?
select round(avg(price),2) as avg_price
    from books where genre='Fantasy';


--Q.14 List customers who have placed at least 2 orders?

select customer_id,count(order_id) 
    from orders_N 
    group by customer_id
    having count(order_id)>=2;
    

--Q.15 Find most frequently orderd book?

SELECT *
FROM (
    SELECT 
        o.book_id,
        b.title,
        COUNT(b.book_id) AS order_count
    FROM orders_N o
    JOIN books b 
      ON o.book_id = b.book_id
    GROUP BY o.book_id, b.title
    ORDER BY order_count DESC
)
WHERE ROWNUM = 1;


    
--Q.16 Show top 3 most expensive books of fantasy genre?

select * 
    from (
        select book_id,
        title,
        price,
        stock,
    row_number() over(order by price desc)rnk 
    from books 
    where genre='Fantasy')
    where rnk<=3;


--Q.17 Retrieve total quantity of books sold by each auther ?

select 
    b.author,
    sum(o.quantity)qty_sold
    from orders_N o
    join books b
on o.book_id = b.book_id
group by b.author;


--Q.18 List the cities where customers who spent over $30 are located?

select distinct c.city,
    o.total_amount
    from customers c
    join orders_N o
on c.customer_id = o.customer_id
where (o.total_amount)>30;


--Q.19 Find the customer who spent most an order?

select * from(
    select
    c.name,
    sum(o.total_amount)total_spent,
    row_number()
    over(order by sum(o.total_amount) desc )rnk
    from customers c
    join orders_N o
on o.customer_id = c.customer_id
    group by c.name)
    where rnk=1;


--Q.20 Calculate stock remaining after fulfilling all orders

SELECT 
    b.book_id,
    b.title,
    b.stock AS initial_stock,
    NVL(b.stock - SUM(o.quantity),0) AS remaining_stock
FROM books b
LEFT JOIN orders_N o 
  ON b.book_id = o.book_id
GROUP BY b.book_id, b.title, b.stock;






