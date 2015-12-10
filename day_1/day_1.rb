# http://adventofcode.com/day/1
# Santa's in an apartment building. Each '(' represents going up one floor,
# each ')' represents going down one floor.
# What floor do the instructions take Santa?

def count_floors(input)
  input.strip!
  input_size = input.size
  up = input.count('(')
  down = input_size - up # where input is only ')' and ''
  floor = up - down
end

def main
  File.readlines('day_1_input.txt').each do |line|
    puts count_floors(line)
  end
end

main
