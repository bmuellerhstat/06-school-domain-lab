class School
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    def add_student(name, grade)
       unless @roster[grade] != nil
       @roster[grade] = []
    end
    @roster[grade] << name
    end
    def grade(name)
        @roster[name]
    end
    def sort
        @roster.each do |grade, names|
        @roster[grade]=names.sort
    end
    
    end
end