class School
    attr_accessor :student_name
    attr_accessor :roster
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    
    def add_student(student_name, grade)
         unless @roster[grade] != nil
         @roster[grade] = []
         end
         @roster[grade] << student_name
     end
    
    def grade(grade_number)
        @roster[grade_number]
    end
    
    def sort 
        @roster.each do |grade, names|
            names.sort!
        end
    end
end