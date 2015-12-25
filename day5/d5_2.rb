vowels = %w(a e i o u)
disallowed = %w(ab cd pq xy)
numNice = 0
line = "ieodomkazucvgmuy"
File.open("input.txt").each do |line|
  i = 0
  lineSplit = line.split('')
  hasPair = false
  hasRepeat = false
  while i < lineSplit.length do
    unless i == 0
      unless i + 2 >= lineSplit.length
        hasPair = true if lineSplit[i+1..lineSplit.length-1].join.include?(lineSplit[i-1] + lineSplit[i])
      end
      unless i + 1 >= lineSplit.length
        hasRepeat = true if lineSplit[i-1] == lineSplit[i+1]
      end
    end
    i += 1
  end
  numNice += 1 if hasPair && hasRepeat  
end
puts "Total number of nice strings: #{numNice}"