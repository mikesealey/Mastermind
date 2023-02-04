# Mastermind
require 'colorize'
require 'colorized_string'
=begin
    Computer randomly selects from 6 colours, four times

    Red 
    Orange
    Yellow
    Green
    Light Blue
    Blue
    Purple

=end

#puts ColorizedString.colors

puts "###RED###".colorize(:color => :white, :background => :red)
puts "###PINK##".colorize(:color => :white, :background => :light_magenta)
puts "#ORANGE##".colorize(:color => :white, :background => :yellow)
puts "##GREEN##".colorize(:color => :white, :background => :green)
puts "##BLUE###".colorize(:color => :white, :background => :blue)
puts "##PURPLE#".colorize(:color => :white, :background => :magenta)
