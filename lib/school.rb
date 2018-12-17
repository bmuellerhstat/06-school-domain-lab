# code here!
class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    def roster
        @roster
    end
    def add_student(student_name,grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
            @roster[grade] << student_name
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        students_sorted = {}
        @roster.each do |grade,student_name|
            students_sorted[grade] =student_name.sort
        end
        students_sorted
    end
end