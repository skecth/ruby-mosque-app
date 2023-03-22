class Activity < ApplicationRecord
    belongs_to :ajk
    
    has_many :register, dependent: :destroy
    has_many :kariahs, through: :registers
end
