require 'pry'
class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :kind
  
  def initialize(one, two, three)
    @t = []
    @t << one 
    @t << two 
    @t << three
  end 
  
  def larger_than_zero?
    @t.any? {|s| s.to_f < 0.0}
  end
  
  def triangle_inequality?
      a = []
      a << (@t[0] + @t[2]) - @t[1]
      a << (@t[1] + @t[2]) - @t[0]
      a.any? {|t| t < 0}
  end
  
  def kind
    #if triangle_inequality? == TRUE && larger_than_zero? == TRUE
      type = @equilateral if @t.all? {|s| s == @t[0]} 
        
      if @t[0] == @t[2]
        type = @scalene
      else @t[1] == @t[2] || @t[1] == @t[3]
        type = @isosceles
      end 
  #end
  type
end
  
  #def check_specifications
  #  if triangle_type == nil
  #   begin 
  #      raise TriangleError
  #    rescue TriangleError => error  
  #        puts error.message 
  #    end
  #  else 
  #    puts "Looks good!"
  #  end
  #end
  
  #class TriangleError < StandardError 
  #  def message 
  #    "Check sides of the triangle"
  #  end
  #end
end 
