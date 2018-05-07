require 'tiny_segmenter'

input = ARGV
content = File.read input[0]

ts = TinySegmenter.new
words = ts.segment(content, ignore_punctuation: true)

# Make an empty hash
frequency = Hash.new(0)

# Get the words and their frequencies
words.each { |word| frequency[word] += 1 }

# Sort by the frequencies
frequency = frequency.sort_by {|key, value| value}.to_h

# Output to file
frequency.each do |key,value|
  str = key + ", " + value.to_s
  File.open("freq.txt", 'a'){|file| file.puts str}
end
