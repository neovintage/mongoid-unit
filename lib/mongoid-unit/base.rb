module Mongoid
  module Unit

    private

    def mongoid_class_name #:nodoc:
      klass = self.class.to_s.gsub(/Test/,'')
      if !Object.constants.include?(klass.to_sym)
        raise ArgumentError, "Could not find a Mongoid class named #{klass} based on the TestCase class name.  Consider using the class name in the method argument."
      end
      klass.constantize
    end

  end
end
