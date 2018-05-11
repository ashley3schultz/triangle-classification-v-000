require 'pry'
class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :kind
  
  def initialize(one, two, three)
    @t = []
    @t << one 
    @t << two 
    @t << three
    @kind = find_kind
  end 
  
  def below_zero?
    @t.any? {|s| s.to_f < 0.0}
  end
  
  #def triangle_inequality?
  #    a = []
  #    a << (@t[0] + @t[2]) - @t[1]
  #    a << (@t[1] + @t[2]) - @t[0]
  #    a.any? {|t| t < 0}
  #end
  
  def find_kind
    if equilateral?
      @kind = :equilateral
    elsif isosceles?
      @kind = :isosceles
    else scalene?
      @kind = :scalene
    end 
    
  end
    
    #if triangle_inequality? == TRUE && larger_than_zero? == TRUE
    
    def equilateral?
      @t.all? {|s| s == @t[0]} 
    end
    
    def isosceles?
      @t[0] == @t[1] || @t[0] == @t[2] || @t[1] == @t[2]
    end 
    
    def scalene?
      @t[0] != @t[1] && @t[0] != @t[2] && @t[1] != @t[2]
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
