-- task 1 -- 135
-- select count(*) from colors

-- task 2 -- 1950/2017
-- select min(year), max(year) from sets

-- task 3 -- 11673
-- select count(*) from sets

-- task 4 -- 25993
-- select count(*) from parts

-- task 5 -- 2014
/*
select
	year,
	count(*) as amount
from sets
group by year
order by amount desc
*/

-- task 6 -- 2017
/*
select
	year,
	avg(num_parts) as avg
from sets
group by year
order by avg desc
*/

-- task 7 -- 2015 
/*
select
	year,
	count(distinct theme_id) as themes
from sets
group by year
order by themes desc
*/

-- task 8 -- Minifigs
/*
select
	part_categories.name as category,
	count(*) as amount
from parts
left join part_categories on parts.part_cat_id = part_categories.id
group by category
order by amount desc
*/

-- task 9 -- 3916
-- SELECT sum(quantity) FROM inventory_sets

-- task 10 -- 1929178
-- SELECT sum(quantity) FROM inventory_parts 

-- task 11 -- Black
/*
select
	colors.name as color,
	sum(quantity) as quantity
from inventory_parts
left join colors on inventory_parts.color_id = colors.id
group by color
order by quantity desc
*/

-- task 12 -- 496
/*
select
	themes.name as name,
	count(*) as quantity
from sets
left join themes on sets.theme_id = themes.id
group by 1
order by 2 desc
*/

-- task 13 -- 100399
/*
select
	themes.name as name,
	sum(num_parts) as amount
from sets
left join themes on sets.theme_id = themes.id
group by 1
order by 2 desc
*/

-- task 14 -- Sculptures
/*
select
	themes.name as name,
	max(num_parts) as amount
from sets
left join themes on sets.theme_id = themes.id
group by 1
order by 2 desc
*/

-- task 15 -- Bricks
/*
select 
	part_categories.name as name,
	sum(quantity) as amount
from inventory_parts
left join parts on inventory_parts.part_num = parts.part_num
left join part_categories on part_categories.id = parts.part_cat_id
group by 1
order by 2 desc
*/

-- task 16 -- 

/*
select 
	part_categories.name as name,
	sum(quantity) as amount
from inventory_sets
left join parts on inventory_parts.part_num = parts.part_num
left join part_categories on part_categories.id = parts.part_cat_id
group by 1
order by 2 desc
*/ 


-- task 17 -- City
/*
select themes.name as name, sum(quantity) as amount
from inventory_sets
left join sets on inventory_sets.set_num = sets.set_num
left join themes on themes.id = sets.theme_id
group by themes.name
order by amount desc
*/

-- task 18 -- 3991
/*
with total as (select
	year as year,
	count(*) as amount
from sets
group by year
)

select
	total.year,
	total.amount,
	sum(total.amount) over (order by year asc)
from total
order by year asc
*/ 


-- task 19 -- 
/* 
select
	(case when t1.parent_id is null then t1.name
	else concat(t2.name, ': ', t1.name ) end) as them
from themes as t1
left join themes as t2 on t1.parent_id = t2.id
*/
