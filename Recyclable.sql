with cte as(select case when low_fats='Y' and recyclable='Y' 
then product_id else null end as product_id
from products)

select *
from cte
where product_id is not null
