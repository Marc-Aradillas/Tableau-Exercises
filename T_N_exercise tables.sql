SHOW DATABASES;

SELECT telco_normalized;
SHOW TABLES;

SELECT *
FROM contract_types AS ct
JOIN customer_contracts AS cc ON cc.contract_type_id = ct.contract_type_id
JOIN customer_churn AS cch ON cch.customer_id = cc.customer_id
JOIN customer_details AS cd ON cd.customer_id = cch.customer_id
JOIN customer_payments AS cp ON cp.customer_id = cd.customer_id
JOIN customer_signups AS cs ON cs.customer_id  = cp.customer_id
JOIN customer_subscriptions AS csub ON csub.customer_id = cs.customer_id
JOIN internet_service_types AS ist ON ist.internet_service_type_id = csub.internet_service_type_id
JOIN payment_types AS pt ON pt.payment_type_id = cp.payment_type_id
