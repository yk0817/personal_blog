# 挿入法
# 以下のリンクを参考に、変数をわかりやすくした。
# https://qiita.com/iwamot/items/8b884dbcd9eda358503e#%E6%8C%BF%E5%85%A5%E3%82%BD%E3%83%BC%E3%83%88

def insertion_sort(*ary)
  1.upto(ary.size - 1) do |outside_count|
    # 比較する基準の変数
    relative_stadard_variable = ary[outside_count]

    inside_count = outside_count
    while inside_count > 0 && ary[inside_count - 1] > relative_stadard_variable
      ary[inside_count] = ary[inside_count - 1]
      inside_count -= 1
    end
    if ary[inside_count] != relative_stadard_variable
      ary[inside_count] = relative_stadard_variable
      p ary
    end
  end
end

insertion_sort 22, 102, 12 , 3, 5