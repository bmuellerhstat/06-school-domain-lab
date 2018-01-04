class School
    attr_accessor :roster
    def initialize(name) 
       @name = name
       @roster = {}
    end 
    def add_student(student_name, grade)
        @roster[grade] ||= [] #@roster[grade] ||= [] means that if grade is nil or it doesn't already exist, then make grade key point to empty array 
        @roster[grade] << student_name #if it isn't nil, then push student_name to existing array
    end
    def  grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
    end
end