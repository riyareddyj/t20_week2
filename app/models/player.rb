class Player < ApplicationRecord
    belongs_to :team   

    #validations
    validates :name, presence: true 
    validates :age, presence: true,
                    numericality: { only_integer: true, greater_than: 0 }   
    validates :position, presence: true 
    validates :team_id, presence: true    
    enum role: { allrounder: 'allrounder', batsmen: 'batsmen', bowler: 'bowler' }   
    validates :role, presence: true 
    validates :is_captain, inclusion: { in: [true, false] }
    validates :is_active, inclusion: { in: [true, false] }  

    # scopes
    default_scope { where(is_active:true) }
    scope :by_role, ->(given_role) { where(role: given_role) }

    #callbacks
    before_destroy :check_is_captain
    after_save :update_player_count
    after_create :single_captain_per_team

    private

    def check_is_captain
      if self.is_captain?
        errors[:base] = "A captain can't be deleted"
        throw(:abort)
      end
    end

    def update_player_count
      team.update(player_count: team.players.count) if team
    end

    def single_captain_per_team
      if is_captain? && team.players.where(is_captain: true).count > 1
        errors[:base] = "A team can only have one captain"
        throw(:abort)
      end
    end
end
