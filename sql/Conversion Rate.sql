CREATE OR REPLACE VIEW `maple_ab.v_ab_primary_kpi` AS
SELECT
  ab_group,
  COUNT(*) AS users,
  SUM(is_payer) AS payers,
  SAFE_DIVIDE(SUM(is_payer), COUNT(*)) AS pay_conversion_rate
FROM `maple_ab.v_user_payment_flag`
GROUP BY ab_group;