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

  describe "#has_flag_name?" do

    context "given a user with the username 'userus'" do
      it "it returns true" do
        @user = User.new(:username => "userus")
        expect(@user.has_flag_name?).to be true
      end
    end


    context "given a user with the username 'usergb'" do
      it "is returns true" do
        @user = User.new(:username => "usergb")
        expect(@user.has_flag_name?).to be true
      end
    end

    context "given a user with the username 'userru'" do
      it "it returns true" do
        @user = User.new(:username => "userru")
        expect(@user.has_flag_name?).to be true
      end
    end

    context "given a user with the username 'user'" do
      it "it returns false" do
        @user = User.new(:username => "user")
        expect(@user.has_flag_name?).to be false
      end
    end

  end

end
