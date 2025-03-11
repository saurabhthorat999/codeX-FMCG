-- Consumer Preferences: 

-- a. What are the preferred ingredients of energy drinks among respondents? 
select Ingredients_expected, count(Ingredients_expected) as count from  fact_survey_responses
group by Ingredients_expected;
-- Guarana	1553
-- Caffeine	3896
-- Vitamins	2534
-- Sugar	2017

-- b. What packaging preferences do respondents have for energy drinks? 
select Packaging_preference, count(Packaging_preference) as count from  fact_survey_responses
group by Packaging_preference
order by count desc;
-- Compact and portable cans	3984
-- Innovative bottle design	3047
-- Collectible packaging	1501
-- Eco-friendly design	983
-- Other	485