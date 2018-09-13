require_relative 'solution.rb'
require 'minitest/spec'
require 'minitest/autorun'

describe "empty string" do
  it "do nothing" do
    words = InterviewCake::bracket_validator("")
    words.must_equal(true)
  end
end

describe "return true" do
  it "case 1" do
    words = "{ [ ] ( ) }"
    result = InterviewCake::bracket_validator(words)
    result.must_equal(true)
  end
end

describe "return false" do
  it "case 1" do
    words = "{ [ ( ] ) }"
    result = InterviewCake::bracket_validator(words)
    result.must_equal(false)
  end
  
  it "case 2" do
    words = "{ [ }"
    result = InterviewCake::bracket_validator(words)
    result.must_equal(false)
  end
end
