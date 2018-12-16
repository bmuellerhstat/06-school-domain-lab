# code here!

class School
   attr_accessor :roster
   def initialize(name)
      
      @name = name
      @roster = {}
      
   end
   
   def add_student(student_name, grade_level)
      if @roster[grade_level] == nil
         @roster[grade_level] = []
         @roster[grade_level] << student_name
      else
         @roster[grade_level] << student_name
      end
   end
   
   def grade(grade_level)
      @roster[grade_level]
   end
   
   def sort
      roster_sorted = {}
      @roster.each { |grade, student|
      roster_sorted[grade] = student.sort
      
      }
      return roster_sorted
   end
end