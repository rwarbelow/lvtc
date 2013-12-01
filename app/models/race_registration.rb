class RaceRegistration < ActiveRecord::Base
	belongs_to :user
	belongs_to :event
	before_create :generate_registration_code

	private

	def generate_confirmation_code
  	self.registration_code = loop do
  		possible = (('A'..'Z').to_a + (0..9).to_a + ('a'..'z').to_a)
  		random_token = (0...6).map { |n| possible.sample }.join
  		break random_token unless RaceRegistration.where(confirmation_code: random_token).exists?
  	end
  end
end
