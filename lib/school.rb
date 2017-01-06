class School 
    def initialize(roster)
        @roster = {}
   end
    
     def roster
        @roster
        end
    
    def add_student(name,grade)
        @name = name
        @grade = grade
        arr = []
        
    @roster[@grade] =  arr.push(@name)
    end
    
    def name
        @name
    end
    
    def grade
        @grade
    end
end