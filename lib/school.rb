# code here!

class School
   attr_accessor :name #reader and writer method
   attr_accessor :roster #reader and writer method
     
     def initialize(name) #what will happen when the code starts
         @name = name #sets school name
         @roster = {} #empty roster to hold instnaces
     end
     
     def add_student(name, grade)
         @roster[grade] ||= [] #looks for one thing or something else equal to the grade in the roster
         @roster[grade] << name #shovels name and grade into the roster
     end
     
     def grade(g) #grade deenition waits for the grade/number to be entered
         @roster[g] #will grab just the grade attached to the name in the roster?
     end
     
     def sort #for each person in the roster it will take the name of the student along with there grade and sort it 
         @roster.each do |grade, students|
             students.sort! #! will force change on the roster, which makes sense because it's the students of the new school and there will always be students in the school
         end
     end
end

# school.add_student(name,grade) <-- was just testing something