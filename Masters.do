****data cleaning***
***destring the data***
destring Sales, replace

****to understand its structure and identify any obvious issues***
describe
list in 1/10
*****check for missing variables***
misstable summarize AdvertisingExpenditure Sales
****delete missing data***
drop if missing(AdvertisingExpenditure) | missing(Sales)
****checking an outliner***
summarize AdvertisingExpenditure Sales, detail

****descriptive statistics
summarize Sales AdvertisingExpenditure
****Data visualization through plotting**
scatter Sales AdvertisingExpenditure
****Data visualization through plotting with legend**
scatter Sales AdvertisingExpenditure, title("Sales vs. Advertising Expenditure")
xlabel(40(5)65) ylabel(8(2)20) 
xtitle("Advertising Expenditure") ytitle("Sales")
*****correlation between the twoo variable using Pearson correlation coefficient ***
correlate AdvertisingExpenditure Sales

**************plotting with a regression line***
twoway (scatter Sales AdvertisingExpenditure) (lfit Sales AdvertisingExpenditure)
title("Sales vs. Advertising Expenditure with Fit Line")
xlabel(40(5)65) ylabel(8(2)20)
xtitle("Advertising Expenditure") ytitle("Sales")
***** correlation*****


. regress Sales AdvertisingExpenditure
