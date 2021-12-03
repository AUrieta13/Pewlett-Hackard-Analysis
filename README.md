# Pewlett-Hackard-Analysis

# Overview of the Analysis:
- The manager has given the task of determining the number of retiring employees per title, and identifying the employees who are eligible for participating in the companies mentorship program. Using data that includes each employees number, birthdate, first name, last name, titles with beginning date and ending we are able to produce very helpful tables of information to help Bobby determine the retiring and qualifying employees.

# Results:
- A retiremnet table was created first to determine the number of titles of current employees born in between January 1, 1952 to December 31,1955. After creating the table, we noticed that some employees has multiple titles. This could cause confusion when determining the total number of employees who are retiring. See below.

![retirement_titles](https://user-images.githubusercontent.com/90146132/144551019-f29c8d20-2da5-4494-acf0-fb8b26de6be1.png)

- After assessing the potential error in the previous table, the statement DISTINCT ON was utilized to avoid having the same employee appearin twice on our table that will help detemrine the total retiring employees. See below for updated table.

![unique_titles](https://user-images.githubusercontent.com/90146132/144551244-46b341ad-ae6c-4ff5-9d45-da43110f8a59.png)

- Another table was creating displaying the total number of staff retiring is 32,452, as well as each individual total from each title that was retiring. By looking at the table we can determine that the second highest number of retiring employees are Senior Engineers. See below. 

![retiring_titles](https://user-images.githubusercontent.com/90146132/144551756-22ed49c1-ee64-463e-95bf-c6ffae000e9d.png)

- A table containing current employees was created to determine which employees as well as the title were going to be able to participate in the mentorship program. filtering anyone born in the year of 1965, a table was created of those employees who were eligible. Using the COUNT() function we are able to determine the total number of employees who are eligible. See below.

![mentorship_eligibility](https://user-images.githubusercontent.com/90146132/144552985-2245f68f-9b98-42dc-a9fc-b7312c24ddc8.png)

# Summary:
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  Using the unique titles table and the COUNT() function we are able to determine that 90,398 roles will need to be filled, making the silver tsunami a probable predicament for the company.

![count_unique_titles](https://user-images.githubusercontent.com/90146132/144554114-8b4af83e-fca7-4ac9-bbea-c6c2b226b4c6.png)

- Are there enough qualified, retiremnet-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  According to the mentorship eligibility table we can determine that ther are only 1,940 employees that are eligible for the mentorship program. Therefore, these employees would be outnumbered if there are a large number of employees retiring soon.
  
  ![count_mentorship_eligibility](https://user-images.githubusercontent.com/90146132/144553031-04133d38-30f5-4394-9e9e-f7de0e96315f.png)\
