gem 'mongoid', ">= 4.0"

module Reform::Form::Mongoid
  def self.included(base)
    base.class_eval do
      register_feature Reform::Form::Mongoid
      include Reform::Form::ActiveModel
      include Reform::Form::ORM
      extend ClassMethods
    end
  end

  module ClassMethods
    def i18n_scope
      :mongoid
    end
  end
end
