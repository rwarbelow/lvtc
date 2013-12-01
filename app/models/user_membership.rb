class UserMembership < ActiveRecord::Base
	has_many :users
	belongs_to :membership
	before_create :generate_membership_code

	private

	def generate_membership_code
  	self.membership_code = loop do
  		possible = (('A'..'Z').to_a + (0..9).to_a + ('a'..'z').to_a)
  		random_token = (0...6).map { |n| possible.sample }.join
  		break random_token unless UserMembership.where(membership_code: random_token).exists?
  	end
  end
end
