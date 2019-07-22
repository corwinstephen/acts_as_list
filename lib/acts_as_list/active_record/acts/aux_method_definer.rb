# frozen_string_literal: true

module ActiveRecord::Acts::List::AuxMethodDefiner #:nodoc:
  def self.call(caller_class, ignore_sti = false)
    caller_class.class_eval do
      define_method :acts_as_list_class do
        if ignore_sti
          caller_class.base_class
        else
          caller_class
        end
      end
    end
  end
end
