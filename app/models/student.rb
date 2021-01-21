class Student

    @@all = []

    def initialize(first_name) 
        @first_name = first_name
        @@all << self
    end

    def self.all 
        @@all
    end

    def add_boating_test(name, status, instructor)
         BoatingTest.new(self, name, status, instructor)
    end

    def all_instructors
        boating_test = BoatingTest.all.select do |boating_test| 
            boating_test.student == self  
        end 

        boating_test.map do |boating_test| 
            boating_test.instructor
        end
    end

    def self.find_student(name)
        self.all.find do |student|
            student.name == name
        end
    end

    def tests 
        BoatingTest.all.select { |bt| bt.student == self }
    end

    def grade_percentage
        total = tests.count
        passsed =  tests.select { |test| test.test_status == 'passed' }.count
        100 * (passed.to_f / total.to_f)
    end
   

end

# # * `Student#grade_percentage` should return the percentage of tests
#  that the student has passed, 
#  a Float (so if a student has passed 3 / 9
#   tests that they've taken, this method should return the Float `33.33`)


# * `Student.find_student` will take in a first name
#  and output the student (Object) with that name


# * `Student#add_boating_test` should initialize a new boating test with
    # a Student (Object), 
    # a boating test name (String),
    # a boating test status (String),
    # and an Instructor (Object). 

    # * `Student#all_instructors` should 
    # return an array of instructors 
    # with whom this specific student took a boating test.