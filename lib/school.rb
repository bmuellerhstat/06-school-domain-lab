# code here!
class School
    def initialize(school)
        @school = school
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
        sorted_students = {}
        @roster.each do |grade,student_name|
            sorted_students[grade] = student_name.sort
        end
        sorted_students
    end
end
