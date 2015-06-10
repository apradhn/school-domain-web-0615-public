require "pry"

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new { |hash, key| hash[key] = [] }
  end

  def add_student(name, grade)
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each.with_object({}) {|(grade, names), sorted| sorted[grade] = names.sort}
  end
end