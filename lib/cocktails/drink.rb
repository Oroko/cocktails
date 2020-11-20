# frozen_string_literal: true

module Cocktails
  class Drink
    attr_accessor :name, :drink_id, :ingredient

    @@all = []

    def initialize(name:, ingredient:, drink_id:)
      @name = name
      @ingredient = ingredient
      @drink_id = drink_id
      @@all << self
    end

    def self.all
      @@all
    end
    # helper class method
    def self.find_by_ingredient(ingredient)
      all.select { |d| d.ingredient == ingredient }
    end
  end
end
