require "rails_helper"

describe Snippet do

  it { should have_db_column(:title).of_type(:string) }
  it { should have_db_column(:content).of_type(:text) }
  it { should have_db_column(:output).of_type(:text) }

  it { should have_many(:comments) }
  it { should belong_to(:user) }

  it { should validate_length_of(:title).is_at_least(4) }
  it { should validate_length_of(:title).is_at_most(64) }

  it { should validate_presence_of(:user_id) }

end
