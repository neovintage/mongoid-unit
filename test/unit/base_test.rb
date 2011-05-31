require 'test_helper.rb'

class ButterTest < Test::Unit::TestCase

  def test_proper_class_name_is_found
    assert_nothing_raised { assert_mongoid_document }
  end

end

class BadTest < Test::Unit::TestCase

  def test_error_if_cant_guess_class_name
    assert_raise(ArgumentError) { assert_mongoid_document }
  end

end
