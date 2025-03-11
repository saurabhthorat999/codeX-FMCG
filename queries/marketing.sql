-- Marketing Channels and Brand Awareness: 

-- a. Which marketing channel can be used to reach more customers?
select 
	Marketing_channels,
    count(Marketing_channels) as count 
from  fact_survey_responses
group by Marketing_channels
order by count DESC;

-- Online ads	4020
-- TV commercials	2688
-- Outdoor billboards	1226
-- Other	1225
-- Print media	841 
 
-- b. How effective are different marketing strategies and channels in reaching our customers?

select 
	
    Limited_edition_packaging,
    count(Limited_edition_packaging) as count
from  fact_survey_responses
where Current_brands="CodeX"
group by Limited_edition_packaging
order by count DESC;
-- Total Cunsumers CODEX - 980
-- Yes	415
-- No	370
-- Not Sure	195