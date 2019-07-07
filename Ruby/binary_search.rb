p "二分探索法: 複数の数値を入力してください。"
p "例) 1 2 3 5 50 45"
str = STDIN.gets
ary = str.split(" ").map(&:to_i).sort
p ary
p "見つける値を入力してください"
p "例) 50"
target = STDIN.gets.chomp.to_i


def binary_search(ary: ,target: )
  left = 0
  length = ary.size
  right = length - 1

  while left <= right
    mid = (left + right) / 2
    if ary[mid] == target
      break
    elsif target > ary[mid]
      left = mid + 1
    else
      right = mid - 1
    end
  end
  p "#{mid+1}番目にありました"
end
# 実行
binary_search(ary: ary, target: target)

