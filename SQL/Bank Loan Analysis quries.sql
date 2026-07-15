SELECT * FROM cleaned_financial_loan LIMIT 20;

--Q1. How many total loan applications were received by the bank?
SELECT
COUNT(*) AS total_loan_applications
FROM cleaned_financial_loan;

--Q2. What is the total amount of loans funded by the bank?
SELECT
ROUND(SUM(loan_amount)::numeric,2) AS total_funded_amount
FROM cleaned_financial_loan;

--Q3. What is the total amount received from customers?
SELECT
ROUND(SUM(total_payment)::numeric,2) AS total_amount_received
FROM cleaned_financial_loan;

--Q4. What is the average loan amount issued to customers?
SELECT
ROUND(AVG(loan_amount)::numeric,2) AS average_loan_amount
FROM cleaned_financial_loan;

--Q5. What is the average interest rate charged on loans?
SELECT
ROUND(AVG(int_rate)::numeric,2) AS average_interest_rate
FROM cleaned_financial_loan;

--Q6. What is the average Debt-to-Income (DTI) ratio of loan applicants?
SELECT
ROUND(AVG(dti)::numeric,2) AS average_dti
FROM cleaned_financial_loan;

--Q7. What is the average annual income of loan applicants?
SELECT
ROUND(AVG(annual_income)::numeric,2) AS average_annual_income
FROM cleaned_financial_loan;

--Q8. How many unique customers have applied for loans?
SELECT
COUNT(DISTINCT member_id) AS total_customers
FROM cleaned_financial_loan;

--Q9. How much total interest has the bank earned from all loans?
SELECT
ROUND(SUM(total_payment - loan_amount)::numeric,2) AS total_interest_earned
FROM cleaned_financial_loan;

--Q10. What percentage of the funded loan amount has been recovered?
SELECT
ROUND(
    (SUM(total_payment)::numeric / SUM(loan_amount)) * 100,
    2
) AS repayment_percentage
FROM cleaned_financial_loan;

--Q11. How many loans fall under each loan status?
SELECT
loan_status,
COUNT(*) AS total_loans
FROM cleaned_financial_loan
GROUP BY loan_status
ORDER BY total_loans DESC;

--Q12. What percentage of loans are Fully Paid, Current, and Charged Off?
SELECT
loan_status,
COUNT(*) AS total_loans,
ROUND(
COUNT(*)*100.0/(SELECT COUNT(*) FROM cleaned_financial_loan),
2
) AS percentage
FROM cleaned_financial_loan
GROUP BY loan_status
ORDER BY percentage DESC;

--Q13. What is the total funded amount for each loan status?
SELECT
loan_status,
ROUND(SUM(loan_amount)::numeric,2) AS total_funded_amount
FROM cleaned_financial_loan
GROUP BY loan_status
ORDER BY total_funded_amount DESC;

--Q14. What is the total amount received for each loan status?
SELECT
loan_status,
ROUND(SUM(total_payment)::numeric,2) AS total_received_amount
FROM cleaned_financial_loan
GROUP BY loan_status
ORDER BY total_received_amount DESC;

--Q15. What is the average interest rate across different loan statuses?
SELECT
loan_status,
ROUND(AVG(int_rate)::numeric,2) AS average_interest_rate
FROM cleaned_financial_loan
GROUP BY loan_status
ORDER BY average_interest_rate DESC;

--Q16. What is the average Debt-to-Income (DTI) ratio for each loan status?
SELECT
loan_status,
ROUND(AVG(dti)::numeric,2) AS average_dti
FROM cleaned_financial_loan
GROUP BY loan_status
ORDER BY average_dti DESC;

--Q17. Which loan grades have received the highest total funded amount?
SELECT
grade,
ROUND(SUM(loan_amount)::numeric,2) AS total_funded_amount
FROM cleaned_financial_loan
GROUP BY grade
ORDER BY total_funded_amount DESC;

--Q18. Which sub-grades have the highest number of loan applications?
SELECT
sub_grade,
COUNT(*) AS total_applications
FROM cleaned_financial_loan
GROUP BY sub_grade
ORDER BY total_applications DESC;

--Q19. What is the average loan amount issued for each loan grade?
SELECT
grade,
ROUND(AVG(loan_amount)::numeric,2) AS average_loan_amount
FROM cleaned_financial_loan
GROUP BY grade
ORDER BY average_loan_amount DESC;

--Q20. Which loan grades generated the highest total payment received?
SELECT
grade,
ROUND(SUM(total_payment)::numeric,2) AS total_payment_received
FROM cleaned_financial_loan
GROUP BY grade
ORDER BY total_payment_received DESC;

--Q21. How are loan applications distributed across different home ownership types?
SELECT
home_ownership,
COUNT(*) AS total_applications
FROM cleaned_financial_loan
GROUP BY home_ownership
ORDER BY total_applications DESC;

--Q22. Which employment length category has the highest number of loan applications?
SELECT
emp_length,
COUNT(*) AS total_applications
FROM cleaned_financial_loan
GROUP BY emp_length
ORDER BY emp_length;

--Q23. What is the average annual income based on home ownership?
SELECT
home_ownership,
ROUND(AVG(annual_income)::numeric,2) AS average_income
FROM cleaned_financial_loan
GROUP BY home_ownership
ORDER BY average_income DESC;

--Q24. What is the average loan amount for each home ownership type?
SELECT
home_ownership,
ROUND(AVG(loan_amount)::numeric,2) AS average_loan_amount
FROM cleaned_financial_loan
GROUP BY home_ownership
ORDER BY average_loan_amount DESC;

--Q25. How many customers belong to each income category?
SELECT
income_category,
COUNT(*) AS total_customers
FROM cleaned_financial_loan
GROUP BY income_category
ORDER BY total_customers DESC;

--Q26. What is the total funded amount across different income categories?
SELECT
income_category,
ROUND(SUM(loan_amount)::numeric,2) AS total_funded_amount
FROM cleaned_financial_loan
GROUP BY income_category
ORDER BY total_funded_amount DESC;

--Q27. How does loan status vary across verification status?
SELECT
verification_status,
loan_status,
COUNT(*) AS total_loans
FROM cleaned_financial_loan
GROUP BY verification_status, loan_status
ORDER BY verification_status;

--Q28. Which verification status has the highest average loan amount?
SELECT
verification_status,
ROUND(AVG(loan_amount)::numeric,2) AS average_loan_amount
FROM cleaned_financial_loan
GROUP BY verification_status
ORDER BY average_loan_amount DESC;

--Q29. What is the average annual income based on verification status?
SELECT
verification_status,
ROUND(AVG(annual_income)::numeric,2) AS average_income
FROM cleaned_financial_loan
GROUP BY verification_status
ORDER BY average_income DESC;

--Q30. Which employment length group has received the highest total funded amount?
SELECT
emp_length,
ROUND(SUM(loan_amount)::numeric,2) AS total_funded_amount
FROM cleaned_financial_loan
GROUP BY emp_length
ORDER BY total_funded_amount DESC;

--Q31. Which loan purpose has received the highest number of loan applications?
SELECT
purpose,
COUNT(*) AS total_applications
FROM cleaned_financial_loan
GROUP BY purpose
ORDER BY total_applications DESC;

--Q32. Which loan purpose has received the highest total funded amount?
SELECT
purpose,
ROUND(SUM(loan_amount)::numeric,2) AS total_funded_amount
FROM cleaned_financial_loan
GROUP BY purpose
ORDER BY total_funded_amount DESC;

-- Q33.What is the average loan amount for each loan purpose?
SELECT
purpose,
ROUND(AVG(loan_amount)::numeric,2) AS average_loan_amount
FROM cleaned_financial_loan
GROUP BY purpose
ORDER BY average_loan_amount DESC;

--Q34. What is the total amount received for each loan purpose?
SELECT
purpose,
ROUND(SUM(total_payment)::numeric,2) AS total_payment_received
FROM cleaned_financial_loan
GROUP BY purpose
ORDER BY total_payment_received DESC;

--Q35. How are loans distributed across different loan terms?
SELECT
loan_term,
COUNT(*) AS total_loans
FROM cleaned_financial_loan
GROUP BY loan_term
ORDER BY loan_term;

--Q36. What is the average loan amount for each loan term?
SELECT
loan_term,
ROUND(AVG(loan_amount)::numeric,2) AS average_loan_amount
FROM cleaned_financial_loan
GROUP BY loan_term
ORDER BY loan_term;

--Q37. What is the average installment amount for each loan term?
SELECT
loan_term,
ROUND(AVG(installment)::numeric,2) AS average_installment
FROM cleaned_financial_loan
GROUP BY loan_term
ORDER BY loan_term;

--Q38. Which interest category has the highest number of loan applications?
SELECT
interest_category,
COUNT(*) AS total_loans
FROM cleaned_financial_loan
GROUP BY interest_category
ORDER BY total_loans DESC;

--Q39. What is the average interest rate across different interest categories?
SELECT
interest_category,
ROUND(AVG(int_rate)::numeric,2) AS average_interest_rate
FROM cleaned_financial_loan
GROUP BY interest_category
ORDER BY average_interest_rate DESC;

--Q40. Which loan amount category has the highest number of loan applications?
SELECT
loan_amount_category,
COUNT(*) AS total_loans
FROM cleaned_financial_loan
GROUP BY loan_amount_category
ORDER BY total_loans DESC;

--Q41. How are customers distributed across different risk levels?
SELECT
risk_level,
COUNT(*) AS total_customers
FROM cleaned_financial_loan
GROUP BY risk_level
ORDER BY total_customers DESC;

--Q42. How does loan status vary across different risk levels?
SELECT
risk_level,
loan_status,
COUNT(*) AS total_loans
FROM cleaned_financial_loan
GROUP BY risk_level, loan_status
ORDER BY risk_level;

--Q43. What is the default rate for each risk level?
SELECT
risk_level,
COUNT(*) AS total_loans,
SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) AS charged_off_loans,
ROUND(
100.0 * SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS default_rate
FROM cleaned_financial_loan
GROUP BY risk_level
ORDER BY default_rate DESC;

--Q44. Which loan grades have the highest default rate?
SELECT
grade,
COUNT(*) AS total_loans,
SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) AS charged_off_loans,
ROUND(
100.0 * SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS default_rate
FROM cleaned_financial_loan
GROUP BY grade
ORDER BY default_rate DESC;

--Q45. Which loan sub-grades have the highest default rate?
SELECT
sub_grade,
COUNT(*) AS total_loans,
SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) AS charged_off_loans,
ROUND(
100.0 * SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS default_rate
FROM cleaned_financial_loan
GROUP BY sub_grade
ORDER BY default_rate DESC;

--Q46. Which Debt-to-Income (DTI) category has the highest default rate?
SELECT
dti_category,
COUNT(*) AS total_loans,
SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) AS charged_off_loans,
ROUND(
100.0 * SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS default_rate
FROM cleaned_financial_loan
GROUP BY dti_category
ORDER BY default_rate DESC;

--Q47. Which home ownership category has the highest default rate?
SELECT
home_ownership,
COUNT(*) AS total_loans,
SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) AS charged_off_loans,
ROUND(
100.0 * SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS default_rate
FROM cleaned_financial_loan
GROUP BY home_ownership
ORDER BY default_rate DESC;

--Q48* Which loan purpose has the highest default rate?
SELECT
purpose,
COUNT(*) AS total_loans,
SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) AS charged_off_loans,
ROUND(
100.0 * SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS default_rate
FROM cleaned_financial_loan
GROUP BY purpose
ORDER BY default_rate DESC;

--Q49. Which income category has the highest default rate?
SELECT
income_category,
COUNT(*) AS total_loans,
SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) AS charged_off_loans,
ROUND(
100.0 * SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS default_rate
FROM cleaned_financial_loan
GROUP BY income_category
ORDER BY default_rate DESC;

--Q50. Which states have the highest loan default rate?
SELECT
address_state,
COUNT(*) AS total_loans,
SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) AS charged_off_loans,
ROUND(
100.0 * SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS default_rate
FROM cleaned_financial_loan
GROUP BY address_state
HAVING COUNT(*) >= 50
ORDER BY default_rate DESC;

--Q51. What is the monthly trend of total loan applications?
SELECT
TO_CHAR(issue_date, 'Mon YYYY') AS month,
COUNT(*) AS total_loan_applications
FROM cleaned_financial_loan
GROUP BY
DATE_TRUNC('month', issue_date),
TO_CHAR(issue_date, 'Mon YYYY')
ORDER BY
DATE_TRUNC('month', issue_date);

--Q52. What is the monthly trend of the total funded loan amount?
SELECT
TO_CHAR(issue_date, 'Mon YYYY') AS month,
ROUND(SUM(loan_amount)::numeric,2) AS total_funded_amount
FROM cleaned_financial_loan
GROUP BY
DATE_TRUNC('month', issue_date),
TO_CHAR(issue_date, 'Mon YYYY')
ORDER BY
DATE_TRUNC('month', issue_date);

--Q53. What is the monthly trend of the total amount received from customers?
SELECT
TO_CHAR(issue_date, 'Mon YYYY') AS month,
ROUND(SUM(total_payment)::numeric,2) AS total_amount_received
FROM cleaned_financial_loan
GROUP BY
DATE_TRUNC('month', issue_date),
TO_CHAR(issue_date, 'Mon YYYY')
ORDER BY
DATE_TRUNC('month', issue_date);

--Q54. Which year recorded the highest number of loan applications?
SELECT
EXTRACT(YEAR FROM issue_date) AS loan_year,
COUNT(*) AS total_loan_applications
FROM cleaned_financial_loan
GROUP BY loan_year
ORDER BY loan_year;

--Q55. How did loan status change over time on a monthly basis?
SELECT
TO_CHAR(issue_date, 'Mon YYYY') AS month,
loan_status,
COUNT(*) AS total_loans
FROM cleaned_financial_loan
GROUP BY
DATE_TRUNC('month', issue_date),
TO_CHAR(issue_date, 'Mon YYYY'),
loan_status
ORDER BY
DATE_TRUNC('month', issue_date),
loan_status;

--Q56. Which loan purpose generates the highest average profit for the bank?
SELECT
purpose,
ROUND(AVG(total_payment - loan_amount)::numeric,2) AS average_profit
FROM cleaned_financial_loan
GROUP BY purpose
ORDER BY average_profit DESC;

--Q57. Which states generate the highest average revenue for the bank?
SELECT
address_state,
ROUND(AVG(total_payment - loan_amount)::numeric,2) AS average_revenue
FROM cleaned_financial_loan
GROUP BY address_state
HAVING COUNT(*) >= 50
ORDER BY average_revenue DESC;

--Q58.* Which customer segments (Income Category × Risk Level) should the bank prioritize?
SELECT
income_category,
risk_level,
COUNT(*) AS customers,
ROUND(AVG(total_payment - loan_amount)::numeric,2) AS avg_profit
FROM cleaned_financial_loan
GROUP BY income_category, risk_level
ORDER BY avg_profit DESC;

--Q59. Which loan grade provides the highest return on investment (ROI)?
SELECT
grade,
ROUND(
((SUM(total_payment)-SUM(loan_amount))*100.0/SUM(loan_amount))::numeric,
2
) AS roi_percentage
FROM cleaned_financial_loan
GROUP BY grade
ORDER BY roi_percentage DESC;

--Q60. Which loan purposes have both high default rates and high funded amounts?
SELECT
purpose,
ROUND(SUM(loan_amount)::numeric,2) AS total_funded,
ROUND(
100.0 * SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END)/COUNT(*),
2
) AS default_rate
FROM cleaned_financial_loan
GROUP BY purpose
ORDER BY default_rate DESC,total_funded DESC;

--Q61. Which customer groups generate the highest lifetime value for the bank?
SELECT
income_category,
ROUND(AVG(total_payment)::numeric,2) AS avg_customer_value
FROM cleaned_financial_loan
GROUP BY income_category
ORDER BY avg_customer_value DESC;

--Q62. Which employment groups have the best repayment performance?
SELECT
emp_length,
ROUND(
AVG(total_payment/loan_amount)::numeric,
2
) AS repayment_ratio
FROM cleaned_financial_loan
GROUP BY emp_length
ORDER BY repayment_ratio DESC;

--Q63. Which combination of grade and purpose results in the highest average loan amount?
SELECT
grade,
purpose,
ROUND(AVG(loan_amount)::numeric,2) AS average_loan
FROM cleaned_financial_loan
GROUP BY grade,purpose
ORDER BY average_loan DESC
LIMIT 10;

--Q64. Which states have the highest average loan amount while maintaining low default rates?
SELECT
address_state,
ROUND(AVG(loan_amount)::numeric,2) AS average_loan,
ROUND(
100.0 * SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END)/COUNT(*),
2
) AS default_rate
FROM cleaned_financial_loan
GROUP BY address_state
HAVING COUNT(*)>=50
ORDER BY average_loan DESC,default_rate ASC;

--Q65. Which loan grades should the bank prioritize based on profitability and default risk?
SELECT
grade,

COUNT(*) AS total_loans,

ROUND(AVG(loan_amount)::numeric,2) AS avg_loan,

ROUND(AVG(total_payment-loan_amount)::numeric,2) AS avg_profit,

ROUND(
100.0*SUM(CASE WHEN loan_status='Charged Off' THEN 1 ELSE 0 END)/COUNT(*),
2
) AS default_rate

FROM cleaned_financial_loan

GROUP BY grade

ORDER BY
avg_profit DESC,
default_rate ASC;

--Q66. What percentage of loans are classified as Good Loans?
SELECT
ROUND(
COUNT(CASE
WHEN loan_status IN ('Fully Paid','Current')
THEN 1 END
)*100.0/COUNT(*),
2
) AS good_loan_percentage
FROM cleaned_financial_loan;

--Q67. How many Good Loan applications has the bank received?
SELECT
COUNT(*) AS good_loan_applications
FROM cleaned_financial_loan
WHERE loan_status IN ('Fully Paid','Current');

--Q68. What is the total funded amount for Good Loans?
SELECT
ROUND(SUM(loan_amount)::numeric,2) AS good_loan_funded_amount
FROM cleaned_financial_loan
WHERE loan_status IN ('Fully Paid','Current');

--Q69. What is the total amount received from Good Loans?
SELECT
ROUND(SUM(total_payment)::numeric,2) AS good_loan_amount_received
FROM cleaned_financial_loan
WHERE loan_status IN ('Fully Paid','Current');

--Q70. What percentage of loans are classified as Bad Loans?
SELECT
ROUND(
COUNT(CASE
WHEN loan_status='Charged Off'
THEN 1 END
)*100.0/COUNT(*),
2
) AS bad_loan_percentage
FROM cleaned_financial_loan;

--Q71. How many Bad Loan applications has the bank received?
SELECT
COUNT(*) AS bad_loan_applications
FROM cleaned_financial_loan
WHERE loan_status='Charged Off';

--Q72. What is the total funded amount for Bad Loans?
SELECT
ROUND(SUM(loan_amount)::numeric,2) AS bad_loan_funded_amount
FROM cleaned_financial_loan
WHERE loan_status='Charged Off';

--Q73. What is the total amount received from Bad Loans?
SELECT
ROUND(SUM(total_payment)::numeric,2) AS bad_loan_amount_received
FROM cleaned_financial_loan
WHERE loan_status='Charged Off';

--Q74. Compare the overall performance of Good Loans and Bad Loans.
SELECT

CASE
WHEN loan_status IN ('Fully Paid','Current')
THEN 'Good Loan'
ELSE 'Bad Loan'
END AS loan_category,

COUNT(*) AS total_loans,

ROUND(SUM(loan_amount)::numeric,2) AS total_funded_amount,

ROUND(SUM(total_payment)::numeric,2) AS total_amount_received,

ROUND(AVG(int_rate)::numeric,2) AS average_interest_rate,

ROUND(AVG(dti)::numeric,2) AS average_dti

FROM cleaned_financial_loan

GROUP BY loan_category;

