module TokenizrRails
  module Finders
    def find_by_token(token)
      find Tokenizr.decode(token)
    end

    def find(*args)
      if args.first.class == Fixnum || args.first =~ /^\d+$/
        super(*args)
      else
        super Tokenizr.decode(args.first)
      end
    end
  end
end