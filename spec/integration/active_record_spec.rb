require 'spec_helper'

describe 'model with dragonfly image' do
  before :all do
  
    build_model :imageable do
      string :image_uid
      
      has_dragonfly_image
    end
    
  end
  
  it "is valid" do
    Imageable.new.should be_valid
  end
  
  it "accepts an image file" do
    Imageable.create(:image => File.new('spec/support/engine.jpg')).should be_valid
  end
end

describe 'model with dragonfly image validating presence' do
  before :all do
    
    build_model :imageable_required do
      string :image_uid
      
      has_dragonfly_image :validates_presence => true
    end
    
  end
  
  it "is not valid without an image" do
    ImageableRequired.new.should_not be_valid
  end
  
  it "is valid with an image" do
    ImageableRequired.create(:image => File.new('spec/support/engine.jpg')).should be_valid
  end
end

describe 'model with dragonfly image with custom column name' do
  before :all do
    
    build_model :imageable_custom_name do
      string :photo_uid
      
      has_dragonfly_image :name => :photo
    end
    
  end
  
  it "is valid" do
    ImageableCustomName.new.should be_valid
  end
  
  it "accepts an image under the custom name" do
    ImageableCustomName.create(:photo => File.new('spec/support/engine.jpg')).should be_valid
  end
end
