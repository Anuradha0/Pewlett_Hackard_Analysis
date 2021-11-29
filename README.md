# Pewlett-Hackard-Analysis

## Overview of the analysis
Pewlett Hackard is a large company with several thousand employees that has been around for a long time. In a few years numbers of employees will retire and leave open positions behind that need to be filled. The company is looking into the future in two ways. First, it is offering a retirement package for those who meet certain criteria. Second, its thinking about which positions needs to be filled in the future. In this project we analyzed big data sets to help the company to prepare strategies for the future. Down below we showed in detail two analyses for this project:
- We determined the number of retiring employees per title.
- We identified employees who are eligible to participate in a mentorship program.


## Results
We created a table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. Our table contains the most recent titles of each employee. To determine who  is eligible to participate in a mentorship program, we created another table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
### The Number of Retiring Employees by Title
- Our first table holds complex information from all retiring employees including titles from starting date till recent, along with employee numbers, first and last name.

![retirement_titles.](https://github.com/kossakova/Pewlett-Hackard-Analysis/blob/main/PNG/retirement_titles.png)

- Our next table has unique title data, that means it contains the most recent job title of each employee.

![unique_titles.](https://github.com/kossakova/Pewlett-Hackard-Analysis/blob/main/PNG/unique_titles.png)

- Another table we created had grouped a number of employees by titles. Our analysis helped us determine not only how many positions needs to be filled but also how many positions will be opened for a specific title. Following our table we can tell that Senior Engineer and Senior Staff are the most in demand job openings in Pewlett Hackard, while regular Engineer and Staff are each half that number. However, only two manager positions are open. 

![retiring_titles.](https://github.com/kossakova/Pewlett-Hackard-Analysis/blob/main/PNG/retiring_titles.png)

### The Employees Eligible for the Mentorship Program

- This table is a lot like the first retirement_titles table, only this has employees who were born in 1965. It is called mentorship_eligibilty and it presents us with a list of employees who are eligible to do mentorship program for future hires in in Pewlett Hackard.  

![mentorship_eligibilty.](https://github.com/kossakova/Pewlett-Hackard-Analysis/blob/main/PNG/mentorship_eligibilty.png)

## Summary

There is a total count of 90398 positions to be open in Pewlett Hackard in the near future, they are:
29414 Senior Engineer positions, 28254 Senior Staff, 14222 Engineer, 12243 Staff, 4502 Technique Leaders, 1761 Assistant Engineers and 2 Manager positions.
Also, there is a total of 1549 qualified employees who are eligible to mentor new generation of Pewlett Hackard. 

For the upcoming "silver tsunami" will be very useful to see how many qualified mentorship eligible employees we have for each title. Our query provided us with additional information in our mentorship eligibility titles table.

![mentorship_eligibilty_titles.](https://github.com/kossakova/Pewlett-Hackard-Analysis/blob/main/PNG/mentorship_eligibilty_titles.png)

Another additional table we crated is called retirement salary. It contains a list of retiring employees with their employee number, names and salaries. 

![retirement_salary.](https://github.com/kossakova/Pewlett-Hackard-Analysis/blob/main/PNG/retirement_salary.png)
