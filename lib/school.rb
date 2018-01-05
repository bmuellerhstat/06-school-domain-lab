# code here! 
class School 
    
    attr_accessor :roster 
    
    def initialize(name) 
        @name = name 
        @roster = { }
    end
    
    def add_student(name, grade)
    # If it doesn't exist, add it as a new input, otherwise just add it. 
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << name
        else 
            @roster[grade] << name
        end
    end
    
    def grade(grade) #Return all of the students in that grade 
        @roster[grade]
   end
   
    def sort_students
       roster_sorted = {}
       roster.sort.each do |grade, name|
           roster_sorted[grade] = names.sort
       end
      roster_sorted
   end 
end 

School.new("HSTAT")