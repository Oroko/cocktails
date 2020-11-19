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
    end

  end
end
