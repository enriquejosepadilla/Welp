module UsersHelper

	#return the gravatar for a given user
	def gravatar_for(user)
	gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
	size = 150
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end
