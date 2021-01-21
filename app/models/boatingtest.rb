class BoatingTest

    @@all = []
    attr_reader :student, :instructor
    attr_accessor :test_status

    def initialize(student, test_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        @@all << self 
    end

    def self.all
        @@all
    end

end

# # * should initialize with Student (Object),
    #   a boating test name (String),
    #   a boating test status (String),
    #   and an Instructor (Object)