require 'pry'

class School
  
  attr_accessor :name, :roster, :grade
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def grade(number)
    @roster[number]
  end
  
  def sort
    @roster.each do |grade, student|
      @roster[grade] = student.sort
    end
    
  end
  
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
     @roster[grade] << @student_name
  end
end

school = School.new("Bayside High School")
school.roster
school.add_student("Zach Morris", 9)