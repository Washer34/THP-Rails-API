class User < ApplicationRecord
	# Il faut ajouter les deux modules commençant par jwt
	has_many :articles
	has_many :comments
	devise :database_authenticatable, :registerable,
	:jwt_authenticatable,
	jwt_revocation_strategy: JwtDenylist
end