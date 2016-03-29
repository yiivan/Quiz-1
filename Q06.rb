require "benchmark"

def even_num(n)
  array = []
  for num in (0...n).to_a
    array << num * 2
  end
  array
end


# print even_num(4)
# puts ""
# print even_num(7)
# puts ""
# print even_num(10)
# puts ""

def even_num_rec(n)
  n = (0...n).to_a if n.is_a? Integer
  if n == []
    []
  else
    [n[0] * 2] + even_num_rec(n[1..-1])
  end
end

# print even_num_rec(4)
# puts ""
# print even_num_rec(7)
# puts ""
# print even_num_rec(10)
# puts ""

puts "This is the benchmark for loop."
print even_num(100)
puts ""
Benchmark.bm do |x|
  x.report do
    100_000.times {even_num(100)}
  end
end

puts "This is the benchmark for recursion."
print even_num_rec(100)
puts ""
Benchmark.bm do |x|
  x.report do
    100_000.times {even_num_rec(100)}
  end
end

#Reslt: loop is faster than recursion.
