# code here!
class School
    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end
    
    def roster
        @roster
    end
    
    def add_student(student,grade)
        if @roster.key?(grade)
            @roster[grade] << student
        else
            @roster[grade]=[student]
        end
    end
    
    def grade(cohort)
        @roster[cohort]
    end
    
    def sort
        sorted_list = {}
        @roster.each do |grade,student|
            sorted_list[grade]=student.sort
        end
        @roster = sorted_list
    end
end