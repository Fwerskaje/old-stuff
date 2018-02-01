o = Object.new

def o.add(x, y)
  x + y
end

puts "#{o.add(2,3)}"

def o.add_twice(x, y)
  add(x, y) + add(x, y)
end

puts "#{o.add_twice(2, 3)}"

def multiply(a, b)
  a * b
end

puts "#{multiply(2, 3)}"

class Calculator
  def divide(x, y)
    x / y
  end
end

c = Calculator.new

puts "#{c.divide(10,2)}"

class MulCalculator < Calculator
  def multiply(x, y)
    x * y
  end
end

mc = MulCalculator.new

puts "#{mc.class}"

class BinMulCalc < MulCalculator
  def multiply(x, y)
    result = super(x, y)
    result.to_s(2)
  end
end

module Add
  def add(x, y)
    x + y
  end
end

class AddCalc
  include Add
end

def o.to_s
  'a new object'
end

def o.inspect
  '[my object]'
end

x = 128

while x < 1000
  puts "x is #{x}"
  x = x * 2
end

def join_with_commas(*words)
  words.join(', ')
end

def join_with_commas(before, *words, after)
  before + words.join(', ') + after
end

def do_three_times
  yield
  yield
  yield
end

def do_three_times
  yield('first')
  yield('second')
  yield('third')
end

def number_names
  [yield('one'), yield('two'), yield('three')].join(', ')
end

def repl(expr)
  puts "#{expr}"
end

repl(
  (1..10).count { |n| n.even? }
)

repl(
  (1..10).select { |n| n.even? }
)

repl(
  (1..10).any? { |n| n < 8 }
)

repl(
  (1..10).all? { |n| n < 8 }
)

repl(
  (1..5).each do |n|
    if n.even?
      puts "#{n} is even"
    else
      puts "#{n} is odd"
    end
  end
)

repl(
  (1..10).select(&:even?)
)

repl(
  ['one', 'two', 'three'].map(&:chars)
)

repl(
  ['one', 'two', 'three'].flat_map(&:chars)
)

repl(
  (1..10).inject(&:+)
)

class Point < Struct.new(:x, :y)
  def +(other_point)
    Point.new(x + other_point.x, y + other_point.y)
  end

  def inspect
    "#<Point (#{x}, #{y})>"
  end
end

class Point
  def -(other_point)
    Point.new(x - other_point.x, y - other_point.y)
  end
end

class String
  def shout
    upcase + "!!!!"
  end
end

class Greetings
  ENGLISH = 'hello'
  FRENCH = 'bonjour'
  GERMAN = 'guten Tag'
end
