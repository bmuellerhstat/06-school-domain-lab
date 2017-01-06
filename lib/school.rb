class School
  def initialize(school_name)
    @school_name = school_name 
    @roster = {}
  end
  attr_accessor :roster
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
    # puts roster
  end
  def grade(grade)
    roster[grade]
  end
  def sort
    roster.each do |grade, students|
      students.sort!
    end
  end
end
