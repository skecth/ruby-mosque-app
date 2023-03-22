class Activity < ApplicationRecord
    belongs_to :ajk
    
    has_many :register
    has_many :kariah, through: :register
end
