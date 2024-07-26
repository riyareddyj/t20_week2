class Maatch < ApplicationRecord
  belongs_to :team1, class_name: 'Team'
  belongs_to :team2, class_name: 'Team'

  #validations
  validates :date, presence: true, 
                   uniqueness: true,

  validate :date_cannot_be_in_past

  validates :location, presence: true

  validates :home_team_id, presence: true,
                           comparison: { other_than: :away_team_id }

  validates :away_team_id, presence: true,
                           comparison: { other_than: :home_team_id }


  #scopes
  scope :upcoming, ->(date) { where("date > ?", date)}
  scope :by_team, ->(team_id) { where(home_team_id: team_id || away_team_id: team_id)}
  scope :date_range, ->(date1, date2) { where(date: date1..date2)}

  #callbacks
  before_save :date_cannot_be_in_past
  after_create do
    puts "Match created successfully"
  end

  private

  def date_cannot_be_in_past
    if date < Date.today
      errors[:date] = "Date can't be in past"
      throw(:abort)
    end
  end

end
