class User < ApplicationRecord
    has_many :posts

	before_validation :remove_whitespaces
    validates :name, presence: true
    validates :email, format: { with: /\A(.+)@(.+)\z/, message: "Email invalido"  }, uniqueness: true, presence: true
    validates :password, length: {minimum: 6}, presence: true
    
	private
    def remove_whitespaces
        self.name = name.strip
    end

end