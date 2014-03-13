require './utc_converter_tool.rb'

puts "Please enter the UTC time that you would like to convert (XX:XX:XX)"
initial_time = gets.split(':')
hours = initial_time[0]
minutes = initial_time[1]
seconds = initial_time[2]
puts "Great! now type out your desired US time zone (HST,AKST,PST,MST CST,EST)"
selected_timezone = gets.chomp

@converter = TimeConverter.new(hours, minutes, seconds, selected_timezone)
converted_time = (@converter.convert).chomp

puts "You converted time is #{converted_time} #{selected_timezone}."