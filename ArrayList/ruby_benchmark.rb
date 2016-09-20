require 'benchmark'

# O(n)
puts 'New:'
Benchmark.bm do |x|
  x.report { Array.new(10) }
  x.report { Array.new(100) }
  x.report { Array.new(1000) }
  x.report { Array.new(10000) }
  x.report { Array.new(100000) }
end

a = Array.new(10)
b = Array.new(100)
c = Array.new(1000)
d = Array.new(10000)
e = Array.new(100000)
f = Array.new(1000000)

# O(1)
puts 'Push:'
Benchmark.bm do |x|
  x.report { 1000.times { a.push(1) } } 
  x.report { 1000.times { b.push(1) } }
  x.report { 1000.times { c.push(1) } }
  x.report { 1000.times { d.push(1) } }
  x.report { 1000.times { e.push(1) } }
  x.report { 1000.times { f.push(1) } }
end

# O(1)
puts '[]:'
Benchmark.bm do |x|
  x.report { 1000.times { a[10] } }
  x.report { 1000.times { b[100] } }
  x.report { 1000.times { c[1000] } }
  x.report { 1000.times { d[10000] } }
  x.report { 1000.times { e[100000] } }
  x.report { 1000.times { f[1000000] } }
end

# O(1)
puts 'Length:'
Benchmark.bm do |x|
  x.report { 1000.times { a.length } }
  x.report { 1000.times { b.length } }
  x.report { 1000.times { c.length } }
  x.report { 1000.times { d.length } }
  x.report { 1000.times { e.length } }
  x.report { 1000.times { f.length } }
end

puts 'Insert:'
Benchmark.bm do |x|
  x.report { 1000.times { a.insert(10,1) } }
  x.report { 1000.times { b.insert(100,1) } }
  x.report { 1000.times { c.insert(1000,1) } }
  x.report { 1000.times { d.insert(10000,1) } }
  x.report { 1000.times { e.insert(100000,1) } }
  x.report { 1000.times { f.insert(1000000,1) } }
end
