require 'rspec'
require 'clifford'

describe Clifford do

  before do
    @engine = Clifford.new
  end

  after do
    @engine = nil
  end

  describe "the engine" do

    it "pushes instructions onto the stack" do
      @engine.run('0 1').should == '1'
      @engine.run('0 1 0 2').should == '2'
    end

  end
end
