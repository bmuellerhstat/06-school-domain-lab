class School
    attr_accessor :roster
    def initialize(school_name)
        @roster = {}
        def roster
            @roster 
        end
    end
    
    def add_student(name,grade)
        if @roster[grade].nil?
            @roster[grade] = [] #creates an empty array to add names
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end
   
   def grade(grade)
       @roster[grade]
   end
   
   def sort
       @roster.each do |grades,names|
           @roster[grades] = names.sort
       end
   end
end