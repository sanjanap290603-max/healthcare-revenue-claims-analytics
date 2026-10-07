use healthcare_claims;

select count(*) as total_claims
from claims;

select status, count(*)as total_claims
from claims
group by status;

select insurance_type, sum(billed_amount) as total_billed_amount
from claims
group by insurance_type;

 select insurance_type,count(claim_id) as denied_claims
 from claims
 where status='Denied'
 group by insurance_type;
 
 select denial_reason,count(denial_id)as denial_count
 from claim_denials
 group by denial_reason
 order by denial_count desc;
 
select denial_reason,sum(amount_held) as total_amount_held
from claim_denials
group by denial_reason
order by total_amount_held desc;

select year(claim_date) as claim_year,
month(claim_date)as claim_month,
count(*) as total_claims
from claims
group by year(claim_date),
month(claim_date)
order by claim_year,claim_month;
 
select status, avg(datediff(processed_date,submission_date)) as avg_processing_days
from claims
where processed_date is not null
group by status;

select p.provider_name,
count(c.claim_id) as total_claims
from providers p
join claims c
on p.provider_id = c.provider_id
group by p.provider_name
order by total_claims desc;

select p.provider_name,
sum(c.billed_amount) as total_billed_amount
from providers p
join claims c
on p.provider_id = c.provider_id
group by p.provider_name
order by total_billed_amount desc;

select insurance_type,status,
count(claim_id) as total_claims
from claims
group by insurance_type,status
order by insurance_type,status;

select billed_amount,claim_id
from claims
order by billed_amount desc
limit 10;

select claim_id,billed_amount,
rank() over(order by billed_amount desc) as claim_rank
from claims;
