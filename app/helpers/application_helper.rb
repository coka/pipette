module ApplicationHelper

  def owned_by_current_user?(object)
    user_signed_in? && object.user_id == current_user.id
  end

  def get_flag_from_username(username)
    case username[-2..-1]
    when "us"
      "🇺🇸"
    when "gb"
      "🇬🇧"
    when "ru"
      "🇷🇺"
    end
  end

  def username_with_flag(username)
    get_flag_from_username(username) + " " + username
  end

end
