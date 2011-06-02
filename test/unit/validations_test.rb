require 'test_helper'

class ValidationsTest < Test::Unit::TestCase

  def test_presence_of
    assert_validates_presence_of(:name, User)
  end

  def test_uniqueness
    assert_validates_uniqueness_of(:name, User)
  end

  def test_numericality
    assert_validates_numericality_of(:login_number, User)
  end

  def test_length
    assert_validates_length_of(:name, User)
  end

  def test_inclusion
    assert_validates_inclusion_of(:employers, User)
  end

  def test_format
    assert_validates_format_of(:title, User)
  end

  def test_exclusion
    assert_validates_exclusion_of(:former_employers, User)
  end

  def test_confirmation
    assert_validates_confirmation_of(:password, User)
  end

  def test_associated
    assert_validates_associated(:posts, User)
  end

  def test_acceptance_of
    assert_validates_acceptance_of(:terms, User )
  end

end
