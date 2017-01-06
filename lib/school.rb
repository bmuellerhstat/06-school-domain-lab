# code here!
class School
    attr_reader :roster
    attr_accessor :name
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end  
    def add_student(name, grade) 
        unless @roster[grade] != nil
        @roster[grade] = []
        end
    @roster[grade] << name
    end    
    def grade(num) 
        @roster[num]
    end    
    def sort
    @roster.each do |grade, name|
        name.sort!
        
    end    
    end
end    