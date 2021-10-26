#require_relative "Manager"
class Employee
    attr_reader :salary
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        add_boss unless @boss.nil?
    end

    def bonus(multiplier)
        @salary * multiplier
    end

    def add_boss
        @boss.add_report(self)
    end
    
end

class Manager < Employee
    def initialize(name, title, salary,boss)
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
    end

end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren","TA Manager",78000,ned)
shawna = Employee.new("Shawna",	"TA", 12000,darren)
david = Employee.new("David", "TA", 10000,darren)



p ned.bonus(5)
p darren.bonus(4)
p david.bonus(3)