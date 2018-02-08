require 'test_helper'

class ActsAsRogueFilter::Test < ActiveSupport::TestCase
  def has_class
    c = Car.new
    assert(c)
  end

  def responds_to_filterable_method
    assert_respond_to(Product.new, :filterable)
  end
end
