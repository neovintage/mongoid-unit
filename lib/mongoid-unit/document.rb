module Mongoid
  module Unit

    def assert_mongoid_document(c=mongoid_class_name)
      assert(c.included_modules.include?(Mongoid::Document))
    end

    def assert_timestamp_document(c=mongoid_class_name)
      assert(c.included_modules.include?(Mongoid::Timestamps))
    end

    def assert_versioned_document(c=mongoid_class_name)
      assert(c.included_modules.include?(Mongoid::Versioning))
    end

    def assert_paranoid_document(c=mongoid_class_name)
      assert(c.included_modules.include?(Mongoid::Paranoia))
    end

    def assert_has_field(c=mongoid_class_name, *args)
      @arguments = args.collect(&:to_s)
      @arguments.each do |item|
        assert(c.fields.include?(item))
      end
    end

    # alias_method :assert_has_fields, :assert_has_field

  end
end
