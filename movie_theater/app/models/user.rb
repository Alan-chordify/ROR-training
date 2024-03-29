class User < ApplicationRecord
	has_secure_password
  has_one :role
	has_many :user_movies
  has_many :likes
  has_many :movies, through: :user_movies
	validates :email, presence: true, uniqueness: true
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
	validates :username, presence: true, uniqueness: true
	validates :password,
		length: { minimum: 6 },
		if: -> { new_record? || !password.nil? }
end
