module RogueFilter
  module ActsAsFilter
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def acts_as_filterable
        include RogueFilter::ActsAsFilter::LocalInstanceMethods
      end
    end

    module LocalInstanceMethods
      def filterable
        objects = self.where(nil)
        filter_keys.each do |k, v|
          objects = objects.send(k, v) if v.present?
        end
        objects
      end
    end
  end
end
