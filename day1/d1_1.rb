i = 0
File.open("input.txt").each do |line|
  line.split('').each do |char|
    if char == "("
      i += 1
    elsif char == ")"
      i -= 1
    end
  end
end
puts i