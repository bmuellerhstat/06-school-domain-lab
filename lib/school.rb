# code here!
class School
    attr_reader :school_name
    attr_reader :roster
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
def grade(grade_level)
    @roster[grade_level]
end 
def sort
@roster.each do |student_grade,student_name|
student_name.sort!
        end
end
end
