# day 1

def part_1
  temp_total = 0
  max_total = 0
  File.foreach('input.txt') do |line|
    if line.to_i.zero?
      max_total = [temp_total, max_total].max
      temp_total = 0
    else
      temp_total += line.to_i
    end
  end
  puts max_total
end

# part 2
def part_2
  temp_total = 0
  max_totals = [0, 0, 0]
  File.foreach('input.txt') do |line|
    if line.to_i.zero?
      max_totals << temp_total
      max_totals.delete_at(max_totals.find_index(max_totals.min))
      temp_total = 0
    else
      temp_total += line.to_i
    end
  end
  puts max_totals.sum
end

part_1
part_2