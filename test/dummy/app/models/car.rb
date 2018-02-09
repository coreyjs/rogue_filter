class Car < ApplicationRecord
  acts_as_filterable

  scope :rogue_name, -> (name) { where name: name }
end
