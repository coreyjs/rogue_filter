class ApplicationRecord < ActiveRecord::Base
  include RogueFilter::ActsAsFilter
  self.abstract_class = true
end
