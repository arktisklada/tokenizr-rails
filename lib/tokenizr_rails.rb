require "active_record"
require "tokenizr_rails/finders"

module TokenizrRails
  extend ActiveSupport::Concern

  module ClassMethods
    def tokenize
      extend TokenizrRails::Finders

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

if defined?(ActiveRecord)
  ActiveRecord::Base.send :include, TokenizrRails
end
