module ApplicationHelper

  def owned_by_current_user?(object)
    user_signed_in? && object.user_id == current_user.id
  end

end
