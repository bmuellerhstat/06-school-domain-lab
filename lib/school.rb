# code here!
class School
    attr_accessor :roster
    def initialize(roster)
        @roster= {}
    end 
    def add_student(student_name, grade)
        @student_name=student_name
        @grade=grade
        if @roster[grade].nil?
            @roster[grade]= []
            @roster[grade]<< student_name
        else 
            @roster[grade]<< student_name
        end
    end 
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster_sorted={}
        @roster.each do |grade,names|
            @roster_sorted[grade]=[]
            names.sort.each do |name|
                 @roster_sorted[grade] << name
            end
        end
    @roster_sorted
    end 
end 




