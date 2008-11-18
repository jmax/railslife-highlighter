require 'rubygems'
require 'syntax/convertors/html'

convertor = Syntax::Convertors::HTML.for_syntax "ruby"
html = convertor.convert( File.read(ARGV[0]) )

puts html
