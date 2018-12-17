# code here!
class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def roster
        @roster
    end
    

    def add_student(student,grade)
        if @roster[grade].nil?
            @roster[grade]=[]
            @roster[grade] << student 
        else
            @roster[grade] << student 
        end
    end
    
    def grade(num)
        @roster[num]
    end
end