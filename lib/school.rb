# code here!
class School
    
    
    def initialize(school_name)
        @roster = {}
        @school = school_name
    end
    
    def roster
        @roster
    end
    
    def add_student(name,grade)
        
        if @roster[grade].nil?
            @roster[grade] = []
        end    
        @roster[grade] << name
    
    end    
    
    def grade(grade)
        @roster[grade]
    end    
    
    def sort
        sorted_student ={}
            @roster.map do |grade,student|
                sorted_student[grade] = student.sort
            end
        sorted_student
    end

end