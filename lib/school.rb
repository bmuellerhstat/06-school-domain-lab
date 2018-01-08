class School
    attr_accessor :roster
    
    
    def initialize(name)
        @name = name
        @roster = {}
    end
    def add_student(name,grade)
        unless @roster[grade] != nil
        @roster[grade]=[]
    end
    @roster[grade] << name
end
def grade(level)
    @roster[level]
end

def sort
    sorted_roster = {}
    roster.map do |grade, name|
        sorted_roster[grade] = name.sort
    end
    sorted_roster
end
end