vowels = %w(a e i o u)
disallowed = %w(ab cd pq xy)
numNice = 0
File.open("input.txt").each do |line|
  i = 0
  lineSplit = line.split('')
  numVowels = 0
  hasDouble = false
  hasDisallowed = false
  while i < lineSplit.length do
    numVowels += 1 if vowels.include?(lineSplit[i])
      unless i == 0
      hasDouble = true if lineSplit[i-1] == lineSplit[i]
      hasDisallowed = true if disallowed.include?(lineSplit[i-1] + lineSplit[i])
    end
    i += 1
  end
  numNice += 1 if numVowels >= 3 && hasDouble && !hasDisallowed
end
puts "Total number of nice strings: #{numNice}"