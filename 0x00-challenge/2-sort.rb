###
# Sort integer arguments (ascending)
###

result = []
ARGV.each do |arg|
  next if arg !~ /^-?[0-9]+$/  # Skip if not integer

  i_arg = arg.to_i

  # Insert at the correct position
  i = 0
  while i < result.size && i_arg > result[i]
    i += 1
  end
  result.insert(i, i_arg)  # Insert at the found index
end

puts result
