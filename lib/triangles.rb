class Triangles
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1.to_f
    @side2 = side2.to_f
    @side3 = side3.to_f
  end

  define_method(:triangle?) do
    if (@side1 + @side2) > @side3 && (@side1 + @side3) > @side2 && (@side2 + @side3) > @side1
      true
    end
  end

  define_method(:equilateral?) do
    if @side1 == @side2 && @side2 == @side3
      true
    end
  end

  define_method(:isosceles?) do
    if @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      true
    end
  end

  define_method(:scalene?) do
    if @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      true
    end
  end

end
