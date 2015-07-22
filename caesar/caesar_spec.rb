require "caesar"

describe Cipher do

  before :each do
    @cipher = Cipher.new(1)
  end

  describe "#new" do
    it "takes one parameter" do
      @cipher.should be_an_instance_of Cipher
    end
  end

  describe "#shift_one_letter" do
    it "shifts a random letter by one" do
      @cipher.shift_one_letter('a').should eql 'b'
    end
    it "shifts z to a" do
      @cipher.shift_one_letter('z').should eql 'a'
    end
  end

  describe "#caesar" do
    it "keeps the same case" do
      @cipher.caesar("Danny").should eql "Ebooz"
    end
    it "ignores punctuation" do
      @cipher.caesar("a!b?c.d/").should eql "b!c?d.e/"
    end
    it "keeps spaces in the sentence" do
      @cipher.caesar("t u v w x y").should eql "u v w x y z"
    end
  end

end