require_relative "../Lexiconomitron"
require "spec_helper"

describe Lexiconomitron do

describe "#eat_t" do
    before :each do
       @lexi = Lexiconomitron.new
     end

  it "removes every letter t from the input" do
    expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
  end
end

describe "#shazam" do
    before :each do
       @lexi = Lexiconomitron.new
     end

     it "returns inverted words" do
         arr = ["abc", "def"]
       expect(@lexi.shazam(arr)).to match_array(["cba", "fed"])
     end

     it "returns only the first and last words" do
         arr = ["aaa", "bbb", "ccc"]
       expect(@lexi.shazam(arr)).to match_array(["aaa", "ccc"])
     end

     it "returns words with no Ts (case insensitive)" do
         arr = ["ataa", "bbTb"]
       expect(@lexi.shazam(arr)).to match_array(["aaa", "bbb"])
     end
   end

end
