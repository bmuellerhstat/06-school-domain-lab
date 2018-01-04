# code here!
class School
    attr_accessor :roster
    
   def initialize(school_name)
       @school = school_name
       @roster = {}
       
   end
   
   def add_student(name,grade)
    if @roster[grade] == nil
        @roster[grade] = []
        @roster[grade] << name
    else
        @roster[grade] << name
    end
   end
   
   def grade(grade)
       @roster[grade]
   end
   
   def sort
       roster_sorted = {}
       roster.sort.each do |grade, names|
           roster_sorted[grade] = names.sort
       end
      roster_sorted
   end 
end

School.new("HSTAT")