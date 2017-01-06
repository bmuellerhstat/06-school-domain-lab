# code here!
#https://repl.it/FAda

class School
    attr_accessor :name  
    attr_reader :roster
 
    
    def initialize(school_name)
        @school = school_name
       @roster = {}
       
end


def add_student(name, grade)
    @name = name
    @grade = grade
 unless @roster[grade] != nil
 @roster[grade] = []
end

@roster[grade] << name
 end

def grade(grade_number)
    
@roster[grade_number]
    
end

def sort
   @roster.each {|grade, name | name.sort!}
    
end

end

