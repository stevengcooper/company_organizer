# Company Organizer
___
## Description

##### This program allows your business to keep track of employees, departments, evaluate performance reviews, and determine raises according to the review's evaluation.
___
### Make running your Business more effective

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

___
### Getting Started:
Add `department.rb` , `reviews.rb'` and `employee.rb` to your project directory and:

`require './department.rb'`, `require './reviews.rb'` and `require './employee.rb'` in your command file
___
### Running the tests:
If you want to run the tests add `employee_reviews_test.rb` to your project directory and run:
`ruby employee_reviews_test.rb`
___
### Create your Departments and employees
To set up a Department in the system run:
`accounting = Department.new("accounting")`

To add and Employee and add him/ her to a Department run:
`employee_b_smith = Employee.new(name: "Bill Smith", phone: "919.446.9876", email: "bsmith@gmail.com", salary: 75000)`

`accounting.add_employee(employee_b_smith)`
___

###
