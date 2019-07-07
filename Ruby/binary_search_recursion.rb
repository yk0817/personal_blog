p "二分探索法: 複数の数値を入力してください。"
p "例) 1 2 3 5 50 45"
str = STDIN.gets
ary = str.split(" ").map(&:to_i).sort
p ary
p "見つける値を入力してください"
p "例) 50"
target = STDIN.gets.chomp.to_i

class BinarySearchRecursion
  def initialize(ary:, target:)
    @ary = ary
    @target = target
  end

  def binary_search_recursion(left: 0, right: @ary.size - 1)
    mid = (left + right) / 2
    if @ary[mid] == @target
      p "#{mid+1}番目にありました"
      return
    elsif @target > @ary[mid]
      binary_search_recursion(left: mid + 1, right: right)
    else
      binary_search_recursion(left: left, right: mid - 1)
    end
  end
end

@binary_search = BinarySearchRecursion.new(ary: ary, target: target)
@binary_search.binary_search_recursion