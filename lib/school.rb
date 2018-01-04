# code here!
class School
    attr_accessor :roster
  def initialize(name)
      @name = name
      @roster = {}
  end
  
  def add_student(name,grade)
       unless  @roster[grade] != nil #grade key doesn't exist
            @roster[grade] = []
       end
       @roster[grade] << name
  end
  
  def grade(grade)
      @roster[grade]
  end
  
  def sort
      @roster.each do |grade,students|
          @roster[grade] = students.sort #abc order
      end
  end
end