class Instructor
    
    @@all = []

    def initialize(name) 
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def all_test
        BoatingTest.all.select {|tst| tst.instructor == self}
    end 

    def all_students  
     self.all_test.map {|test| test.student}
    end

    def passed_students 
       passed = all_test.select {|test| test.test_status == 'passed'}
       passed.map {|test| test.student}
    end

    def pass_student(studnt, tst_name)
        selected_test = test.find {|test| test.student == studnt && test.test_name == tst_name}
        if selected_test
            selected_test.status = 'passed'
        else
            selected_test = BoatingTest.new(student, 'passed', test_name, self)
        end
        selected_test
    end

    def pass_student(studnt, tst_name)
        selected_test = test.find {|test| test.student == studnt && test.test_name == tst_name}
        if selected_test
            selected_test.status = 'failed'
        else
            selected_test = BoatingTest.new(student, 'failed', test_name, self)
        end
        selected_test
    end
   

end

# * `Instructor#passed_students` should return an array
#   of students who passed a boating test
#   with this specific instructor.

# * `Instructor.all` should return all instructors

 #     if st.test_status == 'passed'
    #     return st
    #     end

    #     end.compact
    # end