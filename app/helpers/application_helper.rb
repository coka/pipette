module ApplicationHelper

  def owned_by_current_user?(object)
    user_signed_in? && object.user_id == current_user.id
  end

  FLAG_HASH = { "us" => "🇺🇸", "gb" => "🇬🇧", "ru" => "🇷🇺" }

  def get_flag_from_username(username)
    FLAG_HASH[username[-2..-1]]
  end

  def username_with_flag(username)
    get_flag_from_username(username) + " " + username
  end

end
