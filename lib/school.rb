 require 'pry'
 class School
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster 
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade].push(name)
    
#    if @roster[grade]
#       @roster[grade].push(name)
#    else 
#       @roster[grade] = [name]
#    end
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
# code here!