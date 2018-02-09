require 'test_helper'

class ActsAsFilter < ActiveSupport::TestCase
  def test_has_class
    c = Car.new
    assert_kind_of(c, Car.class)
  end

  def test_responds_to_filterable_method
    assert_respond_to(Car.new, :filterable)
  end
end
