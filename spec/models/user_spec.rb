require "rails_helper"

describe User do

  it { should have_db_column(:username).of_type(:string) }
  it { should have_db_column(:email).of_type(:string) }
  it { should have_db_column(:encrypted_password).of_type(:string) }

  it { should have_many(:snippets) }
  it { should have_many(:comments) }

  it { should validate_uniqueness_of(:username) }
  it { should validate_length_of(:username).is_at_least(4) }
  it { should validate_length_of(:username).is_at_most(16) }

  it { should validate_uniqueness_of(:email) }

  context "has a flag name" do

    it "is true if it ends with us" do
      @user = User.new(:username => "userus")
      expect(@user.has_flag_name?).to be true
    end

    it "is true if it ends with gb" do
      @user = User.new(:username => "userus")
      expect(@user.has_flag_name?).to be true
    end

    it "is true if it ends with ru" do
      @user = User.new(:username => "userus")
      expect(@user.has_flag_name?).to be true
    end

    it "is false otherwise" do
      @user = User.new(:username => "user")
      expect(@user.has_flag_name?).to be false
    end

  end

end
