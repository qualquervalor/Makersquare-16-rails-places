class Location < ActiveRecord::Base

	def snippet
		self.review.truncate(70)
	end
end
