module UsersHelper
	def gravitar_for(user)
		gravitar_id  = Digest::MD5::hexidigest(user.email.downcase)
		gravitar_url = "https:////secure.gravitar.com/avatars/#{gravitar_id}.png"
		image_tag(gravitar_url, alt: user.name, class: "gravatar")
	end
end
