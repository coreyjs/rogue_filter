require 'test_helper'

class ActsAsFilter < ActiveSupport::TestCase
  def test_responds_to_filterable_method
    assert_respond_to(Car, :filterable)
  end

  def test_class_responds_to_properly
    params = {name: 'Travis CI'}
    assert_respond_to(Car, :rogue_name)
  end
end
