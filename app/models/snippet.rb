class Snippet < ActiveRecord::Base

  has_many :comments, :dependent => :destroy
  belongs_to :user

  validates_presence_of(:user_id)

  validates :title,
    :length => {
      :minimum => 4,
      :maximum => 64,
      :too_short => "is too short (minimum is %{count} characters)",
      :too_long => "is too long (maximum is %{count} characters)"
    }

end
