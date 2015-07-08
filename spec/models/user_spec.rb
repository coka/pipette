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

end
