class Player < ApplicationRecord
    belongs_to :team

    validates :name, presence: true

    validates :age, presence: true,
                    numericality: { only_integer: true }


    validates :position, presence: true

    validates :team_id, presence: true

    validates :role, presence: true

    validates_acceptance_of :is_captain, :allow_nil => true

    validates_acceptance_of :is_active, :allow_nil => true

end
