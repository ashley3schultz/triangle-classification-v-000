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
  
  #def larger_than_zero?
  #  @t.any? {|s| s.to_f < 0.0}
  #end
  
  #def triangle_inequality?
  #    a = []
  #    a << (@t[0] + @t[2]) - @t[1]
  #    a << (@t[1] + @t[2]) - @t[0]
  #    a.any? {|t| t < 0}
  #end
  
  def kind
    if equilateral?
      @kind = "equilateral"
    end 
    if isosceles?
      @kind = "isosceles"
    end 
    if scalene?
      @kind = "scalene"
    end 
    
    #if triangle_inequality? == TRUE && larger_than_zero? == TRUE
    
    def equilateral?
      @t.all? {|s| s == @t[0]} 
    end
      type = @scalene if @t[0] == @t[2]
      type = @isosceles if @t[1] == @t[2] || @t[1] == @t[3]
      @kind = type
      #binding.pry
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
