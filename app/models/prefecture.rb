class Prefecture < ApplicationRecord
    belongs_to :region
    has_many :brands
end