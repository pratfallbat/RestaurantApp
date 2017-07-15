class FoodItem < ApplicationRecord
	def image_url_or_default
		if image_url.present?
			image_url
		else
			"http://loremflickr.com/320/240/#{name}"
		end
	end
end
