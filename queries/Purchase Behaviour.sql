-- Purchase Behavior: 
-- a. Where do respondents prefer to purchase energy drinks? 
select 
	Purchase_location,
    count(Purchase_location)
from fact_survey_responses
group by  Purchase_location;
# SUPERMARKETS
-- Supermarkets				4494
-- Online retailers			2550
-- Gyms and fitness centers	1464
-- Other					679
-- Local stores				813

-- b. What are the typical consumption situations for energy drinks among respondents? 
select 
	Typical_consumption_situations,
    count(Typical_consumption_situations) as count
from fact_survey_responses
group by  Typical_consumption_situations
order by count DESC;

-- Sports/exercise			4494
-- Studying/working late	3231
-- Social outings/parties	1487
-- Other					491
-- Driving/commuting		297

-- c. What factors influence respondents' purchase decisions, such as price range and limited edition packaging?
select  Limited_edition_packaging,
		count(Limited_edition_packaging) 
from  fact_survey_responses 
group by Limited_edition_packaging;
# Limited edition packeging
-- Yes		3946
-- No		4023
-- Not Sure	2031
-- Price effect
select  Price_range,
		count(Price_range) 
from  fact_survey_responses 
group by Price_range;

-- 50-99		4288
-- 100-150		3142
-- Above 150	1561
-- Below 50		1009