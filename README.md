# Mongoid-Unit

Mongoid Assertion Macros for Test::Unit.  Inspired by (Mongoid-Rspec)[https://github.com/evansagge/mongoid-rspec]

## Usage

    require 'test_helper'

    class UserTest < Test::Unit::TestCase

      def test_attributes
        assert_mongoid_document
        assert_timestamp_document
        assert_paranoid_document
        assert_versioned_document
        assert_has_field(:email)
      end

      def test_associations
        assert_has_many(:posts)
        assert_has_one(:game)
        assert_has_and_belongs_to_many(:tags)
        assert_belongs_to(:organization)
        assert_embeds_many(:phones)
        assert_embeds_one(:address)
      end

      def test_validations
        assert_validates_presence_of(:name)
        assert_validates_uniqueness_of(:name)
        assert_validates_numericality_of(:age)
        assert_validates_length_of(:name)
      end

    end


    class AddressTest < Test::Unit::TestCase

      def test_associations
        assert_embedded_in(:user)
      end

    end

## Installation

In your test_helper file or where ever you require 'test/unit':

    require 'mongoid-unit'

## Notes

* When using any of the assertion methods, the gem will try to figure
  out the name of the model based on the test case class name.
