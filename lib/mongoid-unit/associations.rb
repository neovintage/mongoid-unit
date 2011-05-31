module Mongoid
  module Unit

    def assert_has_many(relation, c=mongoid_class_name)
      macro = c.reflect_on_association(relation).macro
      assert(macro == :references_many)
    end

    def assert_has_one(relation, c=mongoid_class_name)
      macro = c.reflect_on_association(relation).macro
      assert(macro == :references_one)
    end

    def assert_has_and_belongs_to_many(relation, c=mongoid_class_name)
      macro = c.reflect_on_association(relation).macro
      assert(macro == :references_and_referenced_in_many)
    end

    def assert_belongs_to(relation, c=mongoid_class_name)
      macro = c.reflect_on_association(relation).macro
      assert(macro == :referenced_in)
    end

    def assert_embeds_many(relation, c=mongoid_class_name)
      macro = c.reflect_on_association(relation).macro
      assert(macro == :embeds_many)
    end

    def assert_embedded_in(relation, c=mongoid_class_name)
      macro = c.reflect_on_association(relation).macro
      assert(macro == :embedded_in)
    end

    def assert_embeds_one(relation, c=mongoid_class_name)
      macro = c.reflect_on_association(relation).macro
      assert(macro == :embeds_one)
    end

  end
end
