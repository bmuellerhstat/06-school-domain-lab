# code here!
class School
    
    #initializes:
    #school class is initialized with a name
    #makes sure roster is empty to begin with 
    #student_arr is empty when school is initalized
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
        @student_arr = []
    end 
    
    #returns the instance variable created in the initialize method
    def roster
        @roster
    end 
    
    #student_arr is empty unless roster contains grade already
    #the new student is shovelled into the student_arr instance variable
    #students are added to different / their specific grade
    def add_student(student,grade)
        @student_arr = [] unless @roster.key?(grade)
        
        @student_arr << student
        @roster[grade]= @student_arr
    end 
    
    #takes in grade and retrieves students from a grade
    def grade(grade_level)
        @roster[grade_level]
    end
    
    #sorts the students alphabetically
    def sort
        roster_sorted = {}
        @roster.each do |num, students|
            roster_sorted[num] = students.sort
        end
        #returns sorted list
        roster_sorted
    end 


end 

#pseudocode for part 3 (add_students)
#in the roster the grade key should point to an empty array unless the array already exists (not nil)