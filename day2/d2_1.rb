include Enumerable
total = 0
File.open("input.txt").each do |line|
  arrDimensions = line.split('x')
  arrDimensions = arrDimensions.sort_by{|i| i.to_i}
  sides = Array.new(3)
  sides[0] = arrDimensions[0].to_i*arrDimensions[1].to_i
  sides[1] = arrDimensions[0].to_i*arrDimensions[2].to_i
  sides[2] = arrDimensions[1].to_i*arrDimensions[2].to_i
  presentDim = 2*sides[0] + 2*sides[1] + 2*sides[2]
  total += sides[0] + presentDim
end
puts "total ft of wrapper paper: #{total}"