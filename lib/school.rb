# code here!
class School
    attr_reader :roster
    attr_accessor :student_name
    
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name,grade)
        unless @roster[grade] != nil
        @roster[grade] = []
        end
        @roster[grade] << student_name
    end
    
    def grade(number)
      @roster[number]
    end
    
    def sort
      @roster.each do |grade,student_names|
          student_names.sort!
      end
      @roster
    end
end