require_relative 'solution.rb'
require 'minitest/spec'
require 'minitest/autorun'

describe InterviewCake::MatchingParens do
  it 'returns correct close posstion' do
    s = "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
    solution = InterviewCake::MatchingParens.new
    solution.perform(s, 10).must_equal 79
    solution.perform(s, 57).must_equal 78
    solution.perform(s, 68).must_equal 77
  end
end
