#regular fib
def regular_fib(n)
  if n <= 1
    n
  end

  regular_fib(n - 2) + regular_fib(n - 1)
end

#array fib
def fib_array(n)
  sequence = [0, 1]
  i = 2

  while i <= n
    sequence.push(sequence[i - 2] + [i - 1])
  end

  sequence
end

#array fib with recursion
def fibonacci(n)
  if n == 0
    [0]
  elsif n == 1
    [0, 1]
  else
    arr = fibonacci(n - 1)
    arr.push(arr[n - 2] + arr[n - 1])
  end
end

def merge_sort(arr)
  if arr.length <= 1
    return arr
  end
    
  mid = arr.length / 2
  left_arr = merge_sort(arr.slice(0, mid))
  right_arr = merge_sort(arr.slice(mid, arr.length))

  merge(left_arr, right_arr)
end

def merge(left, right)
  sorted = []

  until left.empty? || right.empty?
    if left.first < right.first
      sorted.push(left.shift)
    else
      sorted.push(right.shift)
    end
  end

  sorted.concat(left).concat(right)
end

p merge_sort([4,2,5,6,3,1])