require 'spec_helper'

describe String do
  
  it "has the shorten method" do
    'STRING!'.should respond_to(:shorten)
  end
  
end

describe Hash do
  
  it "has the only method" do
    {:a => 1, :b => 2}.only(:b).should == {:b => 2}
  end
  
end
