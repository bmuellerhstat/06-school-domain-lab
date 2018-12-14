# code here!
class School
    attr_accessor :model, :roster
    def initialize(model)
        @model = model
        @roster = {}
    end
    def roster
        @roster
    end
    def add_student(name, age)
        if !@roster.keys.include? age
        @roster[age] = []
        end
        for i in 0..@roster.length
            if age == @roster.keys[i]
                @roster[age] << name
            end
        end
    end
    def grade(grade)
         @roster.values_at(grade).flatten
    end
    def sort
      roster.collect { |grade, name|
        roster[grade] = name.sort
      }
      roster
    end
end
