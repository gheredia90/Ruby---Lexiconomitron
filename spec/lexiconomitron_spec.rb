require_relative "../lexiconomitron.rb"
require "spec_helper"

describe Lexiconomitron do 

  let(:lexi) {Lexiconomitron.new}

  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end
  
  describe "#shazam" do
    it "reverses words and returns the first and last one without t" do
      expect(lexi.shazam(["This", "is", "a", "boring", "test"])).to match_array(["sih", "se"])
    end
  end


end