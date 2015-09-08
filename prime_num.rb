require 'benchmark'
#while str = STDIN.gets
result = Benchmark.realtime do
  #input = str.chomp.to_i
  input = 90000
  
  if input <= 2
    puts 0
    #next
  end

  prime_number_list = Array.new()
  search_list = Array.new()
  search_list = (2..input).to_a

  while true do
    prime_number_list << search_list.first
    prime_number_list.each do |prime_num|
      search_list.delete_if { |num| num % prime_num == 0 }
    end
    next if prime_number_list.last.to_i ** 2 < search_list.last.to_i
    break
  end

  puts prime_number_list.length + search_list.length
end
puts result
#end
