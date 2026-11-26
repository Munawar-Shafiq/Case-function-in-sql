--case functioin--

select * from products;

--case function--
select product_name,price,
   case
        when price>50000 then 'Expensive'
        when price>=50000 and  price<=49000 then 'Moderate'
        else 'aforable'
    end as Price_category
from products;


select product_name,quantity,
   case
        when quantity>=10 then 'In Stock'
        when quantity>=5 and  quantity<=9 then 'Limited Stock'
        else 'Out Of Stock Soon'
    end as Stock_status
from products;

select product_name,category,
   case
        when category like 'Electronics%'then 'Electronics Item'
        when category like 'Furniture%'then 'Furniture Item'
        else 'Accessory Item'
    end as category
from products;

Select * from products;

--Add new column in produtc tabel--
Alter Table products
Add discount_price Numeric(10,2);

update products
set discount_price =null
where product_name in ('laptop','Desk');

update products
set discount_price = price*0.9
where product_name not in ('laptop','Desk');

select product_name,price,discount_price
from products;

--Coalesce function--
select product_name,price,
  coalesce(discount_price,price) as Final_price
from products;
