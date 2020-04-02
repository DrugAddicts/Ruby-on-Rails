class Table < ApplicationRecord
  validates :a, uniqueness: true
end
