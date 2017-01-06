# code here!

class School

 attr_accessor :name
 
 attr_accessor :roster
 
def initialize(name)
 @name = name 
 @roster = {}
end

def add_student(student_name, grade)
 unless @roster[grade] != nil 
 @roster[grade] = []
 end
 @roster[grade] << student_name
end

def grade(level) 
 @roster[level]
end

def sort
 @roster.each do |grade,student_name|
  student_name.sort!
end
end
end