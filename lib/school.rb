# code here!
class School 
    def initialize(school_name)
        @roster = {}
    end
    
    def roster
        @roster
    end
    
    def add_student(student_name,grade)
        if @roster[grade].nil?
            @roster[grade] = []
            @roster[grade] << student_name
        elsif
            @roster[grade] << student_name
        end
    end
    
    def grade(grade)
        @roster[grade]
    end
    
    def sort
        student_sorted = {}
        @roster.sort.each do |num, student|
            student_sorted[num] = student.sort
        end
        return student_sorted
    end
end
