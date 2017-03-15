# code here!
class School
  def initialize( name )
    @name = name
    @roster = {}
  end


  attr_reader :name
  attr_accessor :roster

  def add_student( name, grade )
    if @roster.key?( grade )
      @roster[ grade ] << name
    else
      @roster[ grade ] = []
      @roster[ grade ] << name
    end
  end

  def grade( grade )
    if @roster.key?( grade )
      @roster[ grade ]
    else
      "There are no students in that grade."
    end
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
    @roster
  end
end
