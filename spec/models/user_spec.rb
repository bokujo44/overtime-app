require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryGirl.create(:user)
  end

  describe "creation" do
    xit "can be created" do
      expect(@user).to be_valid
    end
  end

  describe "validations" do
    xit "cannot be created without first_name" do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    xit "cannot be created without last_name" do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    xit "cannot be created without phone" do
      @user.phone = nil
      expect(@user).to_not be_valid
    end

    xit 'requires the phone attr to only contain integers' do
      @user.phone = 'mygreatstr'
      expect(@user).to_not be_valid
    end

    xit 'requires the phone attr to only have 10 chars' do
      @user.phone = '18015984177'
      expect(@user).to_not be_valid
    end
  end

  describe "custom name methods" do
    xit 'has a full name method that combines first and last name' do
      expect(@user.full_name).to eq("GAGA, GAGA")
    end
  end
end