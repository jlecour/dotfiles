#!/usr/bin/env ruby
# require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
# require 'irbtools' unless defined? Irbtools

# begin
#   require 'wirble'
# 
#   # start wirble (with color)
#   Wirble.init
#   Wirble.colorize
# rescue LoadError => err
#   warn "Couldn't load Wirble: #{err}"
# end
# 
# begin
#   require "ap"
#   unless IRB.version.include?('DietRB')
#     IRB::Irb.class_eval do
#       def output_value
#         ap @context.last_value
#       end
#     end
#   else # MacRuby
#     IRB.formatter = Class.new(IRB::Formatter) do
#       def inspect_object(object)
#         object.ai
#       end
#     end.new
#   end
# rescue LoadError => err
#   warn "Couldn't load awesome_print: #{err}"
# end

def pbcopy(str)
  IO.popen('pbcopy', 'w') { |f| f << str.to_s }
end

def pbpaste
  `pbpaste`
end

def ep
  eval(pbpaste)
end