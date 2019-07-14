class Array
  def quicksort
    return self if self.size <= 1
    pivot = self[0]
    right = []
    left = []
    (1..self.size - 1).each do |i|
      if self[i] <= pivot
        left << self[i]
      else
        right << self[i]
      end
    end
    left = left.quicksort
    right = right.quicksort
    return left + [pivot] + right
  end
end

p [1,30, 23, 433, 11].quicksort
