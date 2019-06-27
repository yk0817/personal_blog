p "ユークリッド互換法：数値を入力してください"
p "例) 10 20"
str = STDIN.gets
a, b = str.split(" ").map(&:to_i)

r = a % b

while r > 0 do 
  a = b
  b = r
  r = a % b
end

p a, b