gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class SortByPatternTest < Minitest::Test

  def test_sort_alphabetically
    words = ["broccoli", "Carrots", "FISH", "Bacon", "candy"]
    transformed = []
    words.each do |word|
      transformed << [word.downcase, word]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, word|
      sorted << word
    end
    assert_equal ["Bacon", "broccoli", "candy", "Carrots", "FISH"], sorted
  end

  def test_sort_alphabetically_by_last_letter
    things = ["pill", "box", "glass", "water", "sponge"]
    transformed = []
    things.each do |thing|
      transformed << thing.reverse
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, thing|
      thing = sort_key.reverse
      sorted << thing
    end
    assert_equal ["sponge", "pill", "water", "glass", "box"], sorted
  end

  def test_sort_by_distance
    distances = ["1cm", "9cm", "30cm", "4cm", "2cm"]
    transformed = []
    distances.each do |distance|
      transformed << distance.to_i
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, distance|
      distance = sort_key.to_s
      sorted << distance.concat('cm')
    end
    assert_equal ["1cm", "2cm", "4cm", "9cm", "30cm"], sorted
  end

  def test_sort_by_length
    words = ["heteromorph", "ancyloceratina", "bioengineering", "mathematical", "bug"]

    sorted = words.sort { |a, b| a.length <=> b.length }

    assert_equal ["bug", "heteromorph", "mathematical", "ancyloceratina", "bioengineering"], sorted
  end

  def test_sort_by_proximity_to_ten
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    proximity = [3.02, 9.91, 17.9, 10.01, 11.0]
    sorted = []
    until proximity.empty?
      price = proximity.min_by { |num| (10 - num).abs }
      sorted << price
      proximity.delete(price)
    end
    assert_equal [10.01, 9.91, 11.0, 3.02, 17.9], sorted
  end

  def test_sort_by_number_of_cents
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    string_prices = {}
    sorted = []

    prices.each do |price|
      string_prices[price] = price.to_s.split('.').last
    end

    sorted_cents = string_prices.values.sort

    sorted_cents.each do |cents|
      sorted << string_prices.rassoc(cents)[0]
    end

    assert_equal [11.0, 10.01, 3.02, 7.9, 9.91], sorted
  end

end
