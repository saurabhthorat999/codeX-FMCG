-- Competition Analysis: 

-- a. Who are the current market leaders? 
SELECT 
	Current_brands,
	count(Current_brands) as sales_quant
FROM food_beverages.fact_survey_responses
group by Current_brands
order by sales_quant DESC;


-- Cola-Coka	2538
-- Bepsi	    2112
-- Gangster	    1854
-- Blue Bull	1058
-- CodeX	    980
-- Sky- 9	    979
-- Others	    479

-- b. What are the primary reasons consumers prefer those brands over ours? 
select 
	Reasons_preventing_trying,
    count(Reasons_preventing_trying) as count 
from  fact_survey_responses
group by Reasons_preventing_trying
order by count DESC; 

-- Not available locally	2431
-- Health concerns	2258
-- Not interested in energy drinks	2193
-- Unfamiliar with the brand	1850
-- Other	1268

-- Desired Improvements by consumers 
select 
	Improvements_desired,
    count(Improvements_desired) as count 
from  fact_survey_responses
group by Improvements_desired
order by count DESC; 

-- Reduced sugar content	2995
-- More natural ingredients	2498
-- Wider range of flavors	2037
-- Healthier alternatives	1472
-- Other	998