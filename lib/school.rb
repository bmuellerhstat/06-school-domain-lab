# code here!
class School
    def initialize(name)
        @roster = {}
        def roster
            @roster 
        end
    end
    
    def add_student(name, grade)
        if @roster[grade].nil?
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end
    
    def grade(num)
        @roster[num]
    end
    
    def sort
        name_sort = {}
        @roster.sort.to_h.each do |grade, names|
            name_sort[grade] = names.sort
        end
        return name_sort
    end
end