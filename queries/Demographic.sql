--  Demographic Insights (examples) 


-- a. Who prefers energy drink more?  (male/female/non-binary?) = > Answer = Male - 6038
select 
	count(r.gender),
    r.gender
    from fact_survey_responses s 
join dim_respondents r
on s.Respondent_ID = r.Respondent_ID 
group by  r.gender;


-- b. Which age group prefers energy drinks more? => ANSWER 19-20 -- 5520
select 
	r.age,
	count(r.age) as count
    from fact_survey_responses s 
join dim_respondents r
on s.Respondent_ID = r.Respondent_ID 
group by  r.age;

-- c. Which type of marketing reaches the most Youth (15-30)?   -> Online Ads Count-> 3373

select 
	r.age,
    s.Marketing_channels,
	count(s.Marketing_channels) as count
    from fact_survey_responses s 
join dim_respondents r
on s.Respondent_ID = r.Respondent_ID 
where r.age like "%15%" or r.age like "%30%"
group by Marketing_channels 
order by count DESC;