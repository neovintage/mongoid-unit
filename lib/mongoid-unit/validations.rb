module Mongoid
  module Unit

    def assert_validates_presence_of(field, c=mongoid_class_name)
      assert_not_nil(find_validation(c, field, :presence))
    end

    def assert_validates_uniqueness_of(field, c=mongoid_class_name)
      assert_not_nil(find_validation(c, field, :uniqueness))
    end

    def assert_validates_numericality_of(field, c=mongoid_class_name)
      assert_not_nil(find_validation(c,field, :numericality))
    end

    def assert_validates_length_of(field, c=mongoid_class_name)
      assert_not_nil(find_validation(c, field, :length))
    end

    def assert_validates_inclusion_of(field, c=mongoid_class_name)
      assert_not_nil(find_validation(c, field, :inclusion))
    end

    def assert_validates_format_of(field, c=mongoid_class_name)
      assert_not_nil(find_validation(c, field, :format))
    end

    def assert_validates_exclusion_of(field, c=mongoid_class_name)
      assert_not_nil(find_validation(c, field, :exclusion))
    end

    def assert_validates_confirmation_of(field, c=mongoid_class_name)
      assert_not_nil(find_validation(c, field, :confirmation))
    end

    def assert_validates_associated(field, c=mongoid_class_name)
      assert_not_nil(find_validation(c, field, :associated))
    end

    def assert_validates_acceptance_of(field, c=mongoid_class_name)
      assert_not_nil(find_validation(c, field, :acceptance))
    end

    private

    def find_validation(klass, field, type)
      klass.validators_on(field).find{ |x| x.kind == type }
    end
  end
end
