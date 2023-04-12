require "./lib/present.rb"

RSpec.describe Present do
  context "when no present is wrapped" do
    it "fails" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents has already been wrapped."
    end
  end
  context "when a present is already wrapped" do
    it "fails" do
      present = Present.new
      present.wrap("glasses")
      expect { present.wrap("wrap") }.to raise_error "A contents has already been wrapped."
    end
  end
  context "when you wrap something and you unwrap it" do
    it "When you get glasses" do
      present = Present.new
      present.wrap("glasses")
      result = present.unwrap
      expect(result).to eq "glasses"
    end
  end
  context "When you only have 1 present" do
    it "fails" do
      present = Present.new
      present1 = Present.new
      present.wrap("shoes")
      expect { present1.unwrap }.to raise_error "No contents has already been wrapped."
    end
  end
end
