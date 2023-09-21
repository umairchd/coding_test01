require 'rspec'
require_relative 'coding_test01'

RSpec.describe IncreasingDecreasingNumbers do
  describe '.increasing_number?' do
    it 'returns true for an increasing number' do
      expect(IncreasingDecreasingNumbers.increasing_number?(1234)).to be true
    end

    it 'returns false for a non-increasing number' do
      expect(IncreasingDecreasingNumbers.increasing_number?(4321)).to be false
    end
  end

  describe '.decreasing_number?' do
    it 'returns true for a decreasing number' do
      expect(IncreasingDecreasingNumbers.decreasing_number?(4321)).to be true
    end

    it 'returns false for a non-decreasing number' do
      expect(IncreasingDecreasingNumbers.decreasing_number?(1234)).to be false
    end
  end

  describe '.count_numbers_up_to_power' do
    it 'returns the correct count for power 1' do
      expect(IncreasingDecreasingNumbers.count_numbers_up_to_power(1)).to eq(10)
    end

    it 'returns the correct count for power 2' do
      expect(IncreasingDecreasingNumbers.count_numbers_up_to_power(2)).to eq(100)
    end

    it 'returns the correct count for power 3' do
      expect(IncreasingDecreasingNumbers.count_numbers_up_to_power(3)).to eq(475)
    end

    it 'returns the correct count for power 4' do
      expect(IncreasingDecreasingNumbers.count_numbers_up_to_power(4)).to eq(1675)
    end

    it 'returns the correct count for power 5' do
      expect(IncreasingDecreasingNumbers.count_numbers_up_to_power(5)).to eq(4954)
    end

  end
end