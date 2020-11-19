# frozen_string_literal: true

module Cocktails
  class Drink
    @@all = []

    def initialize
      @@all << self
    end

    def self.all
      @@all
    end
  end
end
