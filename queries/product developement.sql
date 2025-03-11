-- Product Development 
--  Which area of business should we focus more on our product development?(Branding/taste/availability)

select  Price_range,
		count(Price_range) 
from  fact_survey_responses  
where Current_brands = "CodeX"
group by Price_range;
-- price is decent

select  avg(Taste_experience)
from  fact_survey_responses;
-- Average Rating= 3.2 


select  Reasons_preventing_trying,
		count(Reasons_preventing_trying) as count 
from  fact_survey_responses  
group by Reasons_preventing_trying
order by count DESC;
-- Locally not availble is the main reason for not using our brand 
-- Not available locally			2431
-- Health concerns					2258
-- Not interested in energy drinks	2193
-- Unfamiliar with the brand		1850
-- Other							1268