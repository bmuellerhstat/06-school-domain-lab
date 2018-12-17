class School
  def roster=(roster)
    @roster=roster
  end
  
  def roster
    @roster
  end
  
  def initialize(school)
    @school=school
    @roster = {}#empty roster when initialized
  end
  
  def add_student(student, grade)
    if @roster[grade].nil?
      @roster[grade]= []
    end
    @roster[grade] << student#adds student to a grade
  end

  def grade(grade)
    @roster[grade]#retrieves student from grade
  end
  
  def sort
    @roster.each do |grade, student|
      @roster[grade]=student.sort
    end
  end
  @roster
end
@school = School.new("Test School")