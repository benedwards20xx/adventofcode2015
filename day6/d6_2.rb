arr = Array.new(1000)
(0..999).each do |i|
  arr[i] = Array.new()
  arr.each do |j|
    arr[i] << 0
  end
end
File.open("input.txt").each do |line|
  lineSplit = line.split(' ')
  if line.start_with?("turn on", "turn off")
    action = lineSplit[0] + " " + lineSplit[1]
    nums1 = lineSplit[2].split(',')
    coor1 = [nums1[0].to_i, nums1[1].to_i]
    nums2 = lineSplit[4].split(',')
    coor2 = [nums2[0].to_i, nums2[1].to_i]
  elsif line.start_with?("toggle")
    action = lineSplit[0]
    nums1 = lineSplit[1].split(',')
    coor1 = [nums1[0].to_i, nums1[1].to_i]
    nums2 = lineSplit[3].split(',')
    coor2 = [nums2[0].to_i, nums2[1].to_i]
  end
  case action
  when "toggle"
    (coor1[0]..coor2[0]).each do |i|
      (coor1[1]..coor2[1]).each do |j|
        arr[i][j] += 2
      end
    end
  when "turn on"
    (coor1[0]..coor2[0]).each do |i|
      (coor1[1]..coor2[1]).each do |j|
        arr[i][j] += 1
      end
    end
  when "turn off"
    (coor1[0]..coor2[0]).each do |i|
      (coor1[1]..coor2[1]).each do |j|
        arr[i][j] -= 1 if arr[i][j] >= 1
      end
    end
  end
end
brightness = 0
(0..999).each do |i|
  (0..999).each do |j|
    brightness += arr[i][j]
  end
end
puts "total brightness: #{brightness}"
