# code here!
class School
def initialize(school_name)
    @school_name = school_name
    @roster = {}
    @student
end
def add_student(student_name,grade)
#In the roster, the grade key should point to a value of an empty array unless it already exists
 @roster[grade] = []
 @roster[grade] << student_name
end

def grade
 @roster[number]
end
school.new("HSTAT")


#
#
#
#
end