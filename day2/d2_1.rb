include Enumerable
total = 0
File.open("input.txt").each do |line|
  arrDimensions = line.split('x')
  #arrDimensions.each { |s| puts "dim: #{s}" }
  side1 = arrDimensions[0].to_i*arrDimensions[1].to_i
  side2 = arrDimensions[0].to_i*arrDimensions[2].to_i
  side3 = arrDimensions[1].to_i*arrDimensions[2].to_i
  #puts "side1: #{side1}"
  #puts "side2: #{side2}"
  #puts "side3: #{side3}"
  smallest = side1
  smallest = side2 if side2 < smallest
  smallest = side3 if side3 < smallest
  #puts "smallest: #{smallest}"
  presentDim = 2*side1 + 2*side2 + 2*side3
  #puts "presentDim: #{presentDim}"
  total += smallest + presentDim
end
puts total