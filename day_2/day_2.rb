# http://adventofcode.com/day/2
# Return the total square footage required to wrap a present when given the dimensions
# lxwxh, plus slack the size of the smallest side.

def calculate_surface_area(input)
  sorted_array = input.split("x").map(&:to_i).sort
  l = sorted_array[0]
  w = sorted_array[1]
  h = sorted_array[2]
  surface_area = 2*(l*w + w*h + h*l)
  slack = l * w
  total = surface_area + slack
end

def main
  grand_total_surface_area = 0

  File.readlines('day_2_input.txt').each do |line|
    grand_total_surface_area += calculate_surface_area(line)
  end

  puts "Total of #{grand_total_surface_area} square feet. Dayum."
end

main
