module TokenApiSpecHelper
	def user_registration_params
		h = {:email => "bhargav.r.raut@gmail.com", :password => Faker::Internet.password, :confirm_success_url => Faker::Internet.url}
		h[:password_confirmation] = h[:password]
		h.to_json
	end	
end