class User < ApplicationRecord
    has_many :progressreports
    has_many :parents
end
