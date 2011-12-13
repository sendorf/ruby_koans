require File.expand_path(File.dirname(__FILE__) + '/edgecase')

# You need to write the triangle method in the file 'triangle.rb'
require 'triangle.rb'

class AboutTriangleProject2 < EdgeCase::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
  
  def triangle(a, b, c)
    if(a<=0 || b<=0 || c<=0)
     raise TriangleError.new("")
    elsif(a+b <= c || b+c <= a || c+a <=b)
     raise TriangleError.new("")
    elsif(a==b && b==c)
      :equilateral
    elsif(a==b || b==c || a==c)
      :isosceles
    elsif(a!=b && b!=c && c!=a)
      :scalene

    end
  end
  
  def test_illegal_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(0, 0, 0) end
    assert_raise(TriangleError) do triangle(3, 4, -5) end
    assert_raise(TriangleError) do triangle(1, 1, 3) end
    assert_raise(TriangleError) do triangle(2, 4, 2) end
    # HINT: for tips, see http://stackoverflow.com/questions/3834203/ruby-koan-151-raising-exceptions
 end
end

