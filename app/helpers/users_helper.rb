module UsersHelper

  def gravatar_for(user, size: 150)
    if user.nil?
      gravatar_id = 0
      alt_text = "no profile"
    else
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      alt_text = user.first_name
    end
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: alt_text, class: "gravatar")
  end

end
