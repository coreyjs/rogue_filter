# This takes the help code defined here, https://www.justinweiss.com/articles/search-and-filter-rails-models-without-bloating-your-controller/,
# and puts it into a gem.  For learning purposes only.

module RogueFilter
  module ActsAsFilter
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def acts_as_filterable(options = {})
        include RogueFilter::ActsAsFilter::LocalInstanceMethods
      end

      def filterable(filter_keys)
        objects = self.where(nil)
        filter_keys.each do |k, v|
          objects = objects.send("rogue_#{k}", v) if v.present?
        end
        objects
      end

      def method_missing(method, *args)
        puts "RogueFilter:: #{method} is not defined on the class!"
        super
      end
    end

    module LocalInstanceMethods
    end
  end
end
