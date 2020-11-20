# frozen_string_literal: true

module Cocktails
  class API
    def self.fetch_drinks(ingredient)
      url = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=#{ingredient}"
      response = HTTParty.get(url)
      drinks = response['drinks'].each do |c|
        unless c['strDrink'].nil?
          Cocktails::Drink.new(name: c['strDrink'], drink_id: c['idDrink'],
                               ingredient: ingredient)
        end
      end
      #binding.pry
    end
  end
end
