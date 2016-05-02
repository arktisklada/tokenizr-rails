require "tokenizr"
require "active_record"
require "tokenizr-rails/finders"

module Tokenizr
  module Rails
    extend ActiveSupport::Concern

    module ClassMethods
      def tokenize
        extend Tokenizr::Rails::Finders

        instance_eval do
          include InstanceMethods
        end
      end
    end

    module InstanceMethods
      def token
        Tokenizr.encode self.send :id
      end
    end
  end
end

if defined?(ActiveRecord)
  ActiveRecord::Base.send :include, Tokenizr::Rails
end