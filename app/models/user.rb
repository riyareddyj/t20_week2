class User < ApplicationRecord
  # User roles
  enum role: %i[admin manager coach captain player]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
