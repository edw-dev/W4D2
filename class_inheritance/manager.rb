require_relative "employee"
class Manager < Employee
    attr_reader :reports
    def initialize(name, title, salary, boss)
        super
        @reports = []
    end

    def bonus(multiplier)
        salaries = []
        @reports.each {|emp| salaries << emp.salary }
        salaries.sum * multiplier
    end

    def add_report(employee)
        @reports << employee
        if !self.boss.nil?
            self.boss.reports << employee
        end
    end

end