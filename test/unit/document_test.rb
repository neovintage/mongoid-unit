require 'test_helper'

class DocumentTest < Test::Unit::TestCase

  def test_model_is_mongoid_document
    assert_mongoid_document(User)
  end

  def test_model_is_not_mongoid_document
    assert_raise(MiniTest::Assertion) { assert_mongoid_document(Array) }
  end

  def test_model_is_timestamped
    assert_timestamp_document(User)
  end

  def test_model_is_paranoid
    assert_paranoid_document(User)
  end

  def test_model_is_versioned
    assert_versioned_document(User)
  end

  def test_model_has_single_field
    assert_has_field(User, :email)
  end

end
