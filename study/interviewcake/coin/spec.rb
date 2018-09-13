require_relative 'solution.rb'
require 'minitest/spec'
require 'minitest/autorun'

describe InterviewCake::Coin do
  describe '.solve' do
    it 'returns correct' do
      result = subject.solve(4, [1,2,3])
      assert_equal([
        [1,1,1,1],
        [1,1,2],
        [1,3],
        [2,2]
      ], result)
    end
  end
end
