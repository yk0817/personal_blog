@fibonacci_nums = {}
def fibonacci(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  elsif @fibonacci_nums[n]
    return @fibonacci_nums[n]
  else
    @fibonacci_nums[n] = fibonacci(n - 1) + fibonacci(n - 2)
  end
end
p fibonacci(20)
