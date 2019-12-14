#!/usr/bin/ruby
require('./lib/anagrama.rb')

sleep(0.5)
puts "~~~~~ Welcome to AnaGrama! ~~~~~"

sleep(0.5)
puts "~~~~~ Please enter a primary word you would like to compare: ~~~~~"
users_primary_word = gets.chomp

sleep(0.5)
puts "~~~~~ Please enter one or more words ( separated by '~'s ) to compare to your primary word: : ~~~~~"
users_anagram_words = gets.chomp

sleep(0.5)
puts "~~~~~ ...processing... ~~~~~"

play = ANAGRAM.new(users_primary_word)
play.anagram(users_anagram_words)

sleep(1)
puts "~~~~~ The End!~~~~~"
