update users.permissions
set sort = 1
where code like '%create%';

update users.permissions
set sort = 2
where code like '%view%';

update users.permissions
set sort = 3
where code like '%update%';

update users.permissions
set sort = 4
where code like '%delete%';

update users.permissions
set sort = 5
where code like '%import%';

DO
$$
DECLARE
PERM text;
	PERMS
text[] := ARRAY['s_dashboard_business', 's_dashboard_client', 's_dashboard_campaign', 's_dashboard_user', 's_dashboard_product', 's_dashboard_work', 's_dashboard_kpi'];
	i
integer := 1;
BEGIN
    FOREACH
PERM IN ARRAY PERMS
    LOOP
UPDATE users.permissions
SET sort = i
WHERE code = PERM;
i
:= i + 1;
END LOOP;
END $$;




DO
$$
DECLARE
PERM text;
	PERMS
text[] := ARRAY['s_report_campaign_effectiveness', 's_report_statistics_lead_by_department','s_report_analyze_client_growth', 's_report_statistics_quantity_and_value', 's_report_analyze_opportunities_by_stage', 's_report_analyze_reasons_opportunity_win', 's_report_analyze_reasons_opportunity_lose', 's_report_summary_quotes_by_department_and_employee', 's_report_summary_contract_by_department_and_employee', 's_report_statistic_sale_by_business_staff_and_goods'];
	i
integer := 1;
BEGIN
    FOREACH
PERM IN ARRAY PERMS
    LOOP
UPDATE users.permissions
SET sort = i
WHERE code = PERM;
i
:= i + 1;
END LOOP;
END $$;