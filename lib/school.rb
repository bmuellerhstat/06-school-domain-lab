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
            @roster[grade] = names.sort
        end
    end
    
end



# homophones = {1 => ["one", "won"], 2 => ["two", "to", "too"], 3 => ["three"], 4 => ["four", "for"]}

# homophones_sorted = {}

# #code BELOW

# homophones.each do |num, homophones|
#   homophones_sorted[num] = homophones.sort
# end

# #code ABOVE

# homophones_sorted # should return hash with alphabetized words as shown below
# # {1=>["one", "won"], 2=>["to", "too", "two"], 3=>["three"], 4=>["for", "four"]}