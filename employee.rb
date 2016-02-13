require 'byebug'
require './reviews.rb'

class Employee

  include Reviews

  attr_reader :name, :email, :phone, :department

  attr_accessor :review, :salary

  def initialize(name: nil, email: nil, phone: nil, salary: nil, review: nil, performance: nil)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @department = department
    @review = review
    @performance = performance
    @staff_reviews = staff_reviews
  end

  def access_review(name)
    @review = @staff_reviews.select {|n| (n.scan(/\b#{name}\b/i).length >= 1) ? n : false}
  end

  def performance(employee)
    positive = [/\bpleasure\sto\swork\swith/, /\bsuccessfully\b/, /\bwilling\sto\shelp/, /\bclients\sare\shappy/, /\bincredibly\sconsistent\b/, /\beffective\b/, /\bgreat\sasset\b/, /\bpositive\sperson\b/, /\bwhich\sis\svaluable\b/, /\bhas\sgone\swell\b/]
    negative = [/\binterrupt\b/, /\btalk\sover\sothers/, /\bnot\suseful/, /\bnot\scaught\b/, /\binadequate\b/, /\bcommunication\slimitation\b/, /\bconcern/, /\bun.+/, /\bfalse\sstarts\b/, /\bnot\sdone\swell\b/, /\broom\sfor\simprovement\b/, /\bdifficult\b/, /\bcan\scause\sconfusion\b/, /\bnegative\sconsequences\b/]
    access_review(employee.name)
    positive_count = positive.map {|x| employee.review.count(x)}
    negative_count = negative.map {|x| employee.review.count(x)}
    positive_number = 0
    positive_count.reduce {|n| positive_number += n}
    negative_number = 0
    negative_count.reduce {|n| negative_number += n}
    positive_number > negative_number ? (@performance = "satisfactory") : (@performance = "unsatisfactory")
  end

  def salary_adjustment(performance, salary)
    if performance == "satisfactory"
      @salary = (10.0/100 * salary)  + salary
    else
      false
    end
  end

  # def determine_performance(access_review(name))
  # end
end
