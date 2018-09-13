require_relative 'solution.rb'
require 'minitest/spec'
require 'minitest/autorun'

describe "empty string" do
  it "do nothing" do
    words = InterviewCake::reverse_words("")
    words.must_be_instance_of String
    words.must_equal("")
  end
end

describe "string with a single word" do
  it "returns itself" do
    words = "hello"
    words = InterviewCake::reverse_words(words)
    words.must_equal(words)
  end
end

describe "string with more than a word" do
  it "reverses the order" do
    words = "find you will pain only go you recordings security the into if"
    result = InterviewCake::reverse_words(words)
    result.must_equal("if into the security recordings you go only pain will you find")

    words = "toi la ai ma yeu qua doi nay"
    result = InterviewCake::reverse_words(words)
    result.must_equal("nay doi qua yeu ma ai la toi")

  end
end

describe "string with multiple space" do
  it "reverse the order" do
    words = "  hello this    is another words "
    result = InterviewCake::reverse_words(words)
    result.must_equal("words another is this hello")
  end

  it "return string with space wrap" do
    words = "   hello    "
    result = InterviewCake::reverse_words(words)
    result.must_equal("hello")
  end
end
