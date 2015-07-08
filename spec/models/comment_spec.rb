require "rails_helper"

describe Comment do

  it { should have_db_column(:content).of_type(:text) }

  it { should belong_to(:user) }
  it { should belong_to(:snippet) }

  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:snippet_id) }

  it { should validate_length_of(:content).is_at_most(512) }
end
