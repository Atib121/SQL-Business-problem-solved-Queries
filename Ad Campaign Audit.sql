Use practise;

CREATE TABLE ad_conversion_logs (
    lead_id INT PRIMARY KEY,
    marketing_channel VARCHAR(50),
    ad_spend_eur DECIMAL(10, 2),
    conversion_status VARCHAR(50),
    first_month_revenue_eur DECIMAL(10, 2),
    account_type VARCHAR(50),
    device_type VARCHAR(50)
);

INSERT INTO ad_conversion_logs (lead_id, marketing_channel, ad_spend_eur, conversion_status, first_month_revenue_eur, account_type, device_type) VALUES
(1, 'Google Ads', 45.00, 'Converted', 149.00, 'Enterprise Tier', 'Desktop'),
(2, 'Meta Ads', 30.00, 'Dropped Out', 0.00, 'Basic Tier', 'Mobile'),
(3, 'LinkedIn Ads', 120.00, 'Converted', 299.00, 'Enterprise Tier', 'Desktop'),
(4, 'YouTube Ads', 25.00, 'Converted', 19.00, 'Basic Tier', 'Mobile'),
(5, 'Meta Ads', 35.00, 'Converted', 49.00, 'Standard Tier', 'Mobile'),
(6, 'Google Ads', 45.00, 'Dropped Out', 0.00, 'Standard Tier', 'Desktop'),
(7, 'LinkedIn Ads', 110.00, 'Converted', 299.00, 'Enterprise Tier', 'Desktop'),
(8, 'YouTube Ads', 30.00, 'Dropped Out', 0.00, 'Basic Tier', 'Mobile'),
(9, 'Google Ads', 40.00, 'Converted', 49.00, 'Standard Tier', 'Desktop'),
(10, 'Meta Ads', 30.00, 'Dropped Out', 0.00, 'Basic Tier', 'Mobile'),
(11, 'LinkedIn Ads', 130.00, 'Dropped Out', 0.00, 'Enterprise Tier', 'Desktop'),
(12, 'YouTube Ads', 25.00, 'Converted', 49.00, 'Standard Tier', 'Mobile'),
(13, 'Meta Ads', 40.00, 'Converted', 19.00, 'Basic Tier', 'Mobile'),
(14, 'Google Ads', 50.00, 'Converted', 299.00, 'Enterprise Tier', 'Desktop'),
(15, 'LinkedIn Ads', 115.00, 'Converted', 149.00, 'Standard Tier', 'Desktop'),
(16, 'YouTube Ads', 20.00, 'Dropped Out', 0.00, 'Basic Tier', 'Mobile'),
(17, 'Meta Ads', 35.00, 'Dropped Out', 0.00, 'Standard Tier', 'Mobile'),
(18, 'Google Ads', 45.00, 'Converted', 149.00, 'Standard Tier', 'Desktop'),
(19, 'LinkedIn Ads', 125.00, 'Converted', 299.00, 'Enterprise Tier', 'Desktop'),
(20, 'YouTube Ads', 25.00, 'Converted', 19.00, 'Basic Tier', 'Mobile'),
(21, 'Meta Ads', 30.00, 'Dropped Out', 0.00, 'Basic Tier', 'Mobile'),
(22, 'Google Ads', 40.00, 'Converted', 49.00, 'Standard Tier', 'Mobile'),
(23, 'LinkedIn Ads', 140.00, 'Dropped Out', 0.00, 'Enterprise Tier', 'Desktop'),
(24, 'YouTube Ads', 30.00, 'Converted', 49.00, 'Standard Tier', 'Mobile'),
(25, 'Meta Ads', 35.00, 'Dropped Out', 0.00, 'Basic Tier', 'Mobile'),
(26, 'Google Ads', 45.00, 'Converted', 299.00, 'Enterprise Tier', 'Desktop'),
(27, 'LinkedIn Ads', 110.00, 'Converted', 299.00, 'Enterprise Tier', 'Desktop'),
(28, 'YouTube Ads', 25.00, 'Dropped Out', 0.00, 'Basic Tier', 'Mobile'),
(29, 'Meta Ads', 40.00, 'Converted', 49.00, 'Standard Tier', 'Mobile'),
(30, 'Google Ads', 50.00, 'Dropped Out', 0.00, 'Enterprise Tier', 'Desktop'),
(31, 'LinkedIn Ads', 120.00, 'Converted', 149.00, 'Standard Tier', 'Desktop'),
(32, 'YouTube Ads', 20.00, 'Converted', 19.00, 'Basic Tier', 'Mobile'),
(33, 'Meta Ads', 30.00, 'Dropped Out', 0.00, 'Basic Tier', 'Mobile'),
(34, 'Google Ads', 45.00, 'Converted', 149.00, 'Standard Tier', 'Desktop'),
(35, 'LinkedIn Ads', 135.00, 'Converted', 299.00, 'Enterprise Tier', 'Desktop'),
(36, 'YouTube Ads', 25.00, 'Dropped Out', 0.00, 'Basic Tier', 'Mobile'),
(37, 'Meta Ads', 35.00, 'Converted', 19.00, 'Basic Tier', 'Mobile'),
(38, 'Google Ads', 40.00, 'Converted', 49.00, 'Standard Tier', 'Desktop'),
(39, 'LinkedIn Ads', 115.00, 'Converted', 299.00, 'Enterprise Tier', 'Desktop'),
(40, 'YouTube Ads', 30.00, 'Converted', 49.00, 'Standard Tier', 'Mobile');

Select * from ad_conversion_logs;



Select marketing_channel, count(lead_id) as Total_leads, sum(Ad_spend_eur) as Total_invested,
	   sum(first_month_revenue_eur) as Total_Revenue_realised, -- because dropped out has 0 revenue 
       sum(case when conversion_status = 'Dropped Out' then ad_spend_eur else 0 end) as Total_Ad_spend_Wasted,
       round((sum(ad_spend_eur) / count(lead_id)),2) as Avg_ad_spend_per_lead
From ad_conversion_logs
group by marketing_channel
Order by 4 desc;


Select marketing_channel, round((sum(first_month_revenue_eur) / sum(ad_spend_eur)) *100 ,2) as ROI_per,
       round((sum(case when conversion_status = 'Converted' then 1 else 0 end) / count(lead_id)) * 100, 2) as Conversion_rate,
       round((sum(case when conversion_status = 'Dropped Out' then 1 else 0 end) / count(lead_id)) * 100, 2) as Drop_out_rate
from ad_conversion_logs
group by marketing_channel;





Select marketing_channel,
	sum(case when conversion_status = 'Converted' and account_type = 'Basic Tier' then 1 else 0 end) as Conversion_to_Basic,
	sum(case when conversion_status = 'Converted' and account_type = 'Standard Tier' then 1 else 0 end) as Conversion_to_Standard,
	sum(case when conversion_status = 'Converted' and account_type = 'Enterprise Tier' then 1 else 0 end) as Conversion_to_Enterprise
from ad_conversion_logs
group by marketing_channel
Order by 4 desc;



Select marketing_channel,
	sum(case when conversion_status = 'Converted' and device_type = 'Desktop' then 1 else 0 end) as Conversion_from_Desktop,
	sum(case when conversion_status = 'Converted' and device_type = 'Mobile' then 1 else 0 end) as Conversion_to_Mobile
from ad_conversion_logs
group by marketing_channel;


