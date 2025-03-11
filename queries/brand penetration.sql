--  Brand Penetration: 

-- a. What do people think about our brand? (overall rating) 
select 
	Taste_experience,
    count(Taste_experience) as count 
from fact_survey_responses
group by Taste_experience
order by Taste_experience DESC;
-- 5	1986
-- 4	2479
-- 3	2957
-- 2	1524
-- 1	1054
#=============
-- Average

-- b. Which cities do we need to focus more on? 

create table dim_resID_city(
select 
	r.Respondent_ID,c.city
from dim_cities c 
JOIN dim_respondents r 
ON c.City_ID=r.City_ID);


Select city,count(city) as sales
from fact_survey_responses  s 
JOIN dim_resid_city c 
ON s.Respondent_ID=c.Respondent_ID 
group by city
Order by sales ASC;
-- Ahmedabad	456
-- Kolkata	566
-- Pune	906
-- Chennai	937
-- Mumbai	1510
-- Hyderabad	1833
-- Bangalore	2828