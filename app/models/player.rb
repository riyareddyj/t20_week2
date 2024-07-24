class Player < ApplicationRecord
    belongs_to :team

    validates :name, presence: true

    validates :age, presence: true,
                    numericality: { only_integer: true, greater_than: 0 }


    validates :position, presence: true

    validates :team_id, presence: true

    enum role: { allrounder: 'allrounder', batsmen: 'batsmen', bowler: 'bowler' }

    validates :role, presence: true

    validates :is_captain, inclusion: { in: [true, false] }
    
    validates :is_active, inclusion: { in: [true, false] }

end
