class School
    attr_accessor :student_name #reads/writes name of each student
    attr_accessor :roster #reads/writes each student on roster
    
    def initialize(school_name)
        @school_name = school_name #sets global var for name of each school
        @roster = {} #roster starting with no students
    end
    
    def add_student(student_name, grade) #unless there are no grades on the roster for each student, set the roster to an empty array
         unless @roster[grade] != nil 
         @roster[grade] = []
         end
         @roster[grade] << student_name
     end
    
    def grade(grade_number) #for each student's grade, add a grade number to the roster
        @roster[grade_number]
    end
    
    def sort #sort each student and their corresponding grade on the roster
        @roster.each do |grade, names|
            names.sort!
        end
    end
end