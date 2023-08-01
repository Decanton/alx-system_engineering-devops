#!/usr/bin/env ruby

# Check if there is exactly one argument
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <input>"
  exit 1
end

# Extract the input from the command-line argument
input = ARGV[0]

# Define the regular expression pattern
pattern = /hb+t/

# Use the scan method to find all occurrences of the pattern in the input
matches = input.scan(pattern)

# Output the matches
puts matches.join("\n")

