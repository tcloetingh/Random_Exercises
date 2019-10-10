require 'benchmark'

num = 35

  def iterative_fib(num)
    a = 0
    b = 1
    sum = 0 #not using sum for the benchmark test

    num.times do
      next_term = a + b 
      a = b
      b = next_term 
      sum += a 
    end
    puts a
  end

def recursive_fib(num)
  if num == 1 || num == 2
    return 1
  else                                                
    recursive_fib(num - 1) + recursive_fib(num - 2)
  end
end



Benchmark.bm do |x|
  x.report("iterative_fib") {iterative_fib(num)}
  x.report("recursive_fib") {puts recursive_fib(num)}
end