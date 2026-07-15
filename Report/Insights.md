# Bank Loan Portfolio Analysis — Key Insights

## Project Overview

This project analyzes a bank's loan portfolio to evaluate lending performance, repayment behavior, portfolio quality, customer risk, and overall financial outcomes. The analysis was completed using **Python, PostgreSQL, SQL, and Power BI**.

The final dataset contains:

- **38,576 loan records**
- **33 analytical fields**
- Loan, borrower, repayment, risk, geographic, and financial attributes
- Engineered features such as risk level, income category, DTI category, loan amount category, loan term, and loan status classification

---

## Executive KPI Summary

| Metric | Result |
|---|---:|
| Total Loan Applications | **38.6K** |
| Total Funded Amount | **$435.8M** |
| Total Amount Received | **$473.1M** |
| Average Interest Rate | **12.0%** |
| Average DTI | **13.3%** |
| Good Loan Percentage | **86.2%** |
| Bad Loan Percentage | **13.8%** |
| Good Loan Applications | **33.2K** |
| Bad Loan Applications | **5.3K** |

---

## Portfolio Performance Insights

### 1. The overall portfolio is performing positively

The bank funded approximately **$435.8M** and received around **$473.1M** in total payments. This indicates that the portfolio has generated repayments above the original funded amount at an aggregate level.

However, portfolio-level profitability should still be interpreted carefully because total payment may include interest, fees, and repayments collected across loans with different terms and issue dates.

### 2. Most loans are classified as good loans

Approximately **86.2%** of all loan applications are classified as good loans, representing nearly **33.2K applications**.

This suggests that the majority of borrowers are either fully repaying their loans or continuing to make payments. The high good-loan share reflects a generally healthy portfolio.

### 3. Bad loans remain a material risk

Around **13.8%** of applications, or approximately **5.3K loans**, are categorized as bad loans.

Although this is a minority of the portfolio, it remains financially significant because bad loans account for approximately:

- **$65.5M in funded amount**
- **$37.3M in amount received**

The gap between funded and recovered amounts highlights the financial impact of charged-off and defaulted loans.

### 4. Good loans generate the majority of recoveries

Good loans account for approximately:

- **$370.2M in funded amount**
- **$435.8M in total amount received**

This shows that performing loans are the primary driver of portfolio cash flow and repayment income.

---

## Borrower and Risk Insights

### 5. Interest rate is an important risk indicator

Higher-interest loans generally represent borrowers with weaker credit quality or higher perceived lending risk. These loans should be monitored carefully because higher pricing does not automatically compensate for increased default probability.

The risk-level segmentation created in the project helps classify loans into **Low Risk, Medium Risk, and High Risk** groups for easier monitoring.

### 6. DTI should be used as an early-warning indicator

The portfolio's average debt-to-income ratio is approximately **13.3%**. DTI is useful for assessing whether a borrower may be overextended relative to income.

Borrowers with high DTI values should be reviewed alongside:

- Interest rate
- Loan grade and sub-grade
- Annual income
- Employment length
- Home ownership
- Loan purpose
- Previous repayment behavior

A combined risk approach is more reliable than evaluating DTI in isolation.

### 7. Grade and sub-grade support risk-based lending

Loan grade and sub-grade provide a structured view of borrower credit quality. Lower-quality grades generally require:

- Higher interest rates
- Stronger affordability checks
- Lower exposure limits
- More frequent portfolio monitoring

The grade-level dashboard helps identify which credit groups contribute most to funded amount, repayment, and default exposure.

---

## Product and Purpose Insights

### 8. Loan purpose affects both demand and risk

Different loan purposes have different borrowing volumes and repayment behavior. High-volume categories may generate strong business, but they can also create concentration risk.

The bank should compare each purpose using:

- Number of applications
- Total funded amount
- Total received amount
- Average interest rate
- Good-loan percentage
- Bad-loan percentage
- Average profit or return

This helps distinguish between popular loan products and genuinely profitable loan products.

### 9. High-volume segments should not be judged only by application count

A category with many applications may still perform poorly if recovery is weak or default is high. Decision-making should therefore focus on both scale and portfolio quality.

---

## Geographic Insights

### 10. State-wise analysis helps identify concentration and expansion opportunities

Geographic analysis highlights states with the highest lending activity, funded amounts, and repayments.

High-performing states may offer opportunities for:

- Targeted customer acquisition
- Product expansion
- Cross-selling
- Increased lending limits

States with weaker repayment performance may require:

- Stricter approval criteria
- Lower exposure limits
- Additional verification
- More conservative pricing

State performance should always be evaluated using both volume and risk-adjusted outcomes.

---

## Customer Segmentation Insights

### 11. Income segmentation improves lending strategy

Borrowers were categorized into income groups to compare demand, affordability, repayment, and risk.

Higher-income customers may have better repayment capacity, but income alone does not guarantee lower risk. The strongest customer evaluation combines:

- Annual income
- DTI
- Employment length
- Loan amount
- Interest rate
- Grade
- Loan purpose
- Verification status

### 12. Verification status can strengthen credit decisions

Verified income and employment information can reduce uncertainty during underwriting. Loans with incomplete or unverified borrower information should receive closer review, particularly when combined with high DTI or weak credit grades.

---

## Time-Based Insights

### 13. Monthly trends reveal changes in lending demand

Monthly loan application trends help identify:

- Seasonal borrowing patterns
- Periods of rapid portfolio growth
- Changes in funding demand
- Shifts in repayment and risk performance

MTD, PMTD, and MoM measures allow the bank to compare current performance with the previous month and detect emerging changes early.

### 14. Growth should be evaluated together with portfolio quality

An increase in monthly applications or funded amount is positive only when repayment quality remains stable. Rapid loan growth combined with rising bad-loan percentage may indicate weaker underwriting or higher-risk customer acquisition.

---

## Business Recommendations

### 1. Strengthen risk-based approval rules

Use grade, DTI, interest rate, income, employment length, and verification status together rather than depending on a single variable.

### 2. Monitor high-risk segments monthly

Create monthly alerts for segments showing:

- Rising bad-loan percentage
- Falling repayment amount
- Increasing DTI
- Increasing average interest rate
- Rapid application growth without matching recovery

### 3. Prioritize profitable good-loan segments

Focus marketing and retention efforts on customer groups that demonstrate:

- Strong repayment behavior
- Low default rates
- Stable income
- Reasonable DTI
- Positive historical returns

### 4. Improve collection strategies for bad loans

Segment charged-off and late-stage loans by funded amount, purpose, state, and borrower profile. Prioritize recovery efforts where expected collection value is highest.

### 5. Reduce concentration risk

Avoid excessive dependence on a single state, loan purpose, grade, or customer segment. Diversification can reduce the financial impact of a downturn in one category.

### 6. Use the dashboard as an ongoing monitoring tool

The Power BI dashboard should be refreshed regularly to track:

- Total applications
- Funded amount
- Received amount
- Average interest rate
- Average DTI
- Good-loan percentage
- Bad-loan percentage
- Risk-level distribution
- MTD and MoM movements

---

## Tools and Technologies

- **Python / Jupyter Notebook** — Data cleaning, transformation, feature engineering, and exploratory analysis
- **PostgreSQL** — Structured data storage and analytical querying
- **SQL** — KPI calculation, business analysis, segmentation, and trend analysis
- **Power BI** — Interactive dashboards, DAX measures, visual analysis, and business reporting
- **GitHub** — Project documentation, source control, and portfolio presentation

---

## Final Conclusion

The analysis shows that the bank's loan portfolio is broadly healthy, with **86.2% good loans** and total payments exceeding the total funded amount. At the same time, the **13.8% bad-loan segment** represents a meaningful financial risk and requires focused monitoring.

The most effective lending strategy is not simply to increase loan volume. The bank should grow through **risk-adjusted lending**, stronger customer segmentation, geographic diversification, and continuous monitoring of repayment quality.

This project demonstrates how Python, SQL, PostgreSQL, and Power BI can be combined to convert raw banking data into practical, decision-ready business insights.
