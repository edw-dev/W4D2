#require_relative "Employee"
class Manager < Employee
    def initialize(name, title, salary,boss)
        super
        @reports = []
    end

    def bonus(multiplier)
        salaries = []
        @reports.each {|emp| salaries << emp.salary }
        salaries.inject(&:+) * multiplier
    end

    def add_report(employee)
        @reports << employee
    end

end