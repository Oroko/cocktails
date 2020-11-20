# frozen_string_literal: true

module Cocktails
  class CLI
    def run
      puts ''
      puts 'Welcome to the CLI Bar'
      puts '________________'
      puts ''
      puts 'Enter an ingredient to see drink recipes that use it or "exit" to exit.'
      puts ''
      @ingredient = gets.strip.downcase
      Cocktails::API.fetch_drinks(@ingredient)
      print_drinks
    end

    def print_drinks
      Cocktails::Drink.all.each.with_index(1) do |d, i|
        puts "#{i}. #{d.name}"
      end
    end
  end
end
