class Game < ApplicationRecord
    belongs_to :progressreport
    has_many :selectedquestions
end
