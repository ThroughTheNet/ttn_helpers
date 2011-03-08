require 'spec_helper'

describe ActionView::Base do
  
  it "has the link_to_with_current method" do
    ActionView::Base.new.should respond_to(:link_to_with_current)
  end
  
  it "has the stylesheet method" do
    ActionView::Base.new.should respond_to(:stylesheet)
  end
  
  it "has the javascript method" do
    ActionView::Base.new.should respond_to(:javascript)
  end
end
