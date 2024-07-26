class Team < ApplicationRecord
    has_many :players, dependent: :destroy
    has_many :home_matches, class_name: 'Mastch', foreign_key: 'home_team_id'
    has_many :away_matches, class_name: 'Maatch', foreign_key: 'away_team_id'

    #validations
    validates :name, presence: true, 
                     uniqueness: true

    validates :country, presence: true
    
    validates :founded, presence: true, 
                        numericality: { greater_than: 1901 }

    #scopes
    scope :by_country, ->(given_country) { where(country: given_country) }
    scope :founded_after, ->(year) { where("founded > ?", year) }
end