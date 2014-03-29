require 'spec_helper'
require_relative '../lib/problem17'

describe "#write_number" do
  it "converts numbers less than 10 into words" do
    expect(write_number(3)).to eq("three")
    expect(write_number(8)).to eq("eight")
  end

  it "converts teens into words" do
    expect(write_number(11)).to eq("eleven")
    expect(write_number(17)).to eq("seventeen")
  end

  it "converts multiples of 10 into words" do
    expect(write_number(40)).to eq("forty")
    expect(write_number(90)).to eq("ninety")
  end

  it "converts numbers less than 100 into words" do
    expect(write_number(33)).to eq("thirty-three")
    expect(write_number(67)).to eq("sixty-seven")
  end

  it "converts multiples of 100 into words" do
    expect(write_number(200)).to eq("two hundred")
    expect(write_number(800)).to eq("eight hundred")
  end

  it "converts multiples of 100 into words" do
    expect(write_number(117)).to eq("one hundred and seventeen")
    expect(write_number(555)).to eq("five hundred and fifty-five")
    expect(write_number(770)).to eq("seven hundred and seventy")
    expect(write_number(101)).to eq("one hundred and one")
  end

  it "converts 1000 into words" do
    expect(write_number(1000)).to eq("one thousand")
  end
end


describe "#number_of_letters" do
  it "counts the number of letters in a word" do
    expect(number_of_letters("two")).to eq(3)
  end

  it "doesn't count hyphens" do
    expect(number_of_letters("seventy-three")).to eq(12)
  end

  it "doesn't count spaces" do
    expect(number_of_letters("one hundred")).to eq(10)
  end

  it "counts the word 'and'" do
    expect(number_of_letters("three hundred and forty-two")).to eq(23)
  end

end

