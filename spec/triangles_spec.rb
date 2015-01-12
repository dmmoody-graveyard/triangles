require('rspec')
require('triangles')

describe(Triangles) do
  describe('#equilateral?') do
    it('Takes three equal inputs and returns true if Equilateral') do
      test_triangle = Triangles.new(3, 3, 3)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

  describe('#isosceles?') do
    it('Takes three arguments and if two are equal return true') do
      test_triangle = Triangles.new(3, 3, 4)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
  end

  describe('#scalene?') do
    it('Takes three arguments and if none are equal return true') do
      test_triangle = Triangles.new(3, 4, 5)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end

  describe('#triangle?') do
    it('Takes the sum of two sides and if greater than third, is not a triangle') do
      test_triangle = Triangles.new(4, 3, 3)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end
end
