# Company Organizer
___
## Description

##### This program allows your business to keep track of employees, departments, evaluate performance reviews, and determine raises according to the review's evaluation.
___
### Make your Business more efficient

  1. Each Department can store and easily access employee's :
    * Name
    * Phone Number
    * Email
    * Salary
    * Performance Reviews
    * Evaluated Review Results
  2.  Each Employee's Performance Review evaluated by the program :
    * Evaluates Review for you.
    * Calculates instantly.
    * Saves your Manager's valuable time.
  3. Determine's raises by Performance:
    * Additional criteria for raises can be established by you.
    * Raises can be Department wide or for individual employee.
  4. See each Department's salary total.

___
### Getting Started:
Add `department.rb` , `reviews.rb'` and `employee.rb` to your project directory and:

`require './department.rb'`, `require './reviews.rb'` and `require './employee.rb'` in your command file or use the file `reviews.rb` included in the repository
___
### Run the tests:
If you want to run the tests add `employee_reviews_test.rb` to your project directory and run:

`ruby employee_reviews_test.rb`
___
### Create your Departments and Employees:
To set up a Department in the system run:

`accounting = Department.new("Accounting")`

To add an Employee to the Accounting Department run:

`employee_b_smith = Employee.new(name: "Bill Smith", phone: "919.446.9876", email: "bsmith@gmail.com", salary: 75000)`

`accounting.add_employee(employee_b_smith)`
___

### Add an Employee review:
Once your Employee has been added, you can then add a review for that Employee by running:

`employee_b_smith.add_review`

You will then be prompted to enter the review.
___
### Evaluate the Review to determine Performance:
The program will scan the review for positive and negative phrases to determine a "satisfactory" or "unsatisfactory" performance by running:

 `employee_b_smith.set_performance(employee_b_smith)`
### Give one Employee a raise:
If you would like to give a raise to "Bill Smith", then the program will determine performance and then give a raise if that "Bill" has a satisfactory Performance:

`employee_b_smith.salary_adjustment(employee_b_smith.performance, employee_b_smith.salary)`
___
### See a Department's total salaries:
To see Accounting's total salaries:

`accounting.total_salaries("Accounting")`
___

### Give a raise to a Department's Employees:
If you would like an an amount of money to be spread to Accounting's Employees, then run:

`accounting.raise_for_department(#AMOUNT TO DISPERSE)`

If you would like to disperse an amount of money to Accounting's Employee's based on who has a satisfactory performance, then run:

`accounting.raise_for_department(#AMOUNT TO DISPERSE) {|x| e.set_performance(e) == "satisfactory"}`

You can add any other parameters you would like by adding to the block.  For instance if you only wanted to give raises to Accounting Employees who have a satisfactory performance and make less than $75,000, then run:

`accounting.raise_for_department(10000) {|e| e.set_performance(e) == "satisfactory" && e.salary < 75000}`
___
