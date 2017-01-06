# code here!
class School
    attr_accessor :roster
  def initialize(school_name)
        @@school_name = school_name
        @roster = {} #hash
  end
    def add_student(name,grade)
      unless @roster[grade] != nil
        @roster[grade] = [] #[] putting into an array 
      end
      @roster[grade] << name
    end
    
    def grade(num)
      @roster[num]
    end
    def sort
      @roster.each do |grade,name|
        #   homophones_sorted[number] = words.sort 
       @roster[grade] = name.sort
      end
    end
end