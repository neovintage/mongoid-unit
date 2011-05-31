require 'test_helper'

class AssociationsTest < Test::Unit::TestCase

  def test_model_has_many
    assert_has_many(:posts, User)
  end

  def test_model_has_one
    assert_has_one(:game, User)
  end

  def test_model_has_and_belongs_to_many
    assert_has_and_belongs_to_many(:tags, User)
  end

  def test_model_belongs_to
    assert_belongs_to(:user, Post)
  end

  def test_model_embeds_many
    assert_embeds_many(:phones, User)
  end

  def test_model_embeds_one
    assert_embeds_one(:address, User)
  end

  def test_model_embedded_in
    assert_embedded_in(:user, Address)
  end
end
