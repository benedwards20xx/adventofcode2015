include Enumerable
total = 0
File.open("input.txt").each do |line|
  arrDimensions = line.split('x')
  arrDimensions = arrDimensions.sort_by{|i| i.to_i}
  vol = arrDimensions[0].to_i * arrDimensions[1].to_i * arrDimensions[2].to_i
  ribbonLen = 2*arrDimensions[0].to_i + 2*arrDimensions[1].to_i
  total += vol + ribbonLen
end
puts "total ft of ribbon: #{total}"