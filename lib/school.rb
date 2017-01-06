class School
    attr_accessor :roster
    
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    
    def add_student(name, grade)
        
        if @roster[grade] == nil #if the grade level doesn't exist
            @roster[grade] = [] #make a new grade equal to an empty array
            @roster[grade] << name #push name into grade
        else #otherwise, the grade level does exist
            @roster[grade] << name #simply push name into grade
        end

    end
 
    def grade(selected_grade)
        @roster.each do |grade, name|
          return name if selected_grade == grade
        end
    end
    
    def sort
        @roster.each do |grade, names|
            names.sort!
        end
        # @roster.sort
    end
    
end
