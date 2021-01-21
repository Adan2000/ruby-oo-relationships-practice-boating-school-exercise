require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

student1 = Student.new("Adan")
student2= Student.new("Isaac")

instructor1= Instructor.new("Mr.Lantz")
instructor2= Instructor.new("Mr.Jasper")

bt1 = student1.add_boating_test("Car Basics", "pending", instructor1)
bt2 = student2.add_boating_test("Driving Basics", "failed", instructor2)
bt3 = student2.add_boating_test("Mechanical Basics", "passed", instructor2) 



binding.pry
0 



#  #leave this here to ensure binding.pry isn't the last line
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

