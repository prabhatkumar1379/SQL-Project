select * from IT_Employee

--FIND DUPLICATES

select firstname, position, count(*) as total
from IT_Employee 
group by firstname, position
having count(*) > 1

---cte & row number

with result3 as
(
select *, 
ROW_NUMBER () over (partition by salary order by salary desc) as rownumber 
from IT_DEVELOPER 
)
select * from result3
where rownumber > 1