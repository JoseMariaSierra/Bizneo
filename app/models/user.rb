class User < ActiveRecord::Base
	has_many :messages
	
	validates :email, uniqueness: true
	validates :nick, presence: true

end

