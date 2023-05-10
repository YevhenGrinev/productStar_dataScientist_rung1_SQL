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

