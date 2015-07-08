class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :snippet

  validates_presence_of(:user_id)
  validates_presence_of(:snippet_id)

  validates :content,
    :presence => :true,
    :length => {
      :maximum => 512,
      :too_long => "is too long (maximum is %{count} characters)"
    }
end
