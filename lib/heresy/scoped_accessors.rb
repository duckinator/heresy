require "heresy/version"

class Object
  class << self
    def public(*args)
      super(*normalize_args(*args))
    end

    def private(*args)
      super(*normalize_args(*args))
    end

    def protected(*args)
      super(*normalize_args(*args))
    end

    def normalize_args(*args)
      # Allow passing in an Array of method names.
      args = args.first if args.length == 1 && args.first.is_a?(Array)

      args
    end

    # +accessor+, +reader+, and +writer+ are equivalent to +attr_accessor+,
    # +attr_reader+, and +attr_writer+, except they return the arguments passed
    # to them, allowing chaining with public, private, and protected.

    def accessor(*args)
      attr_accessor(*args)
      args
    end

    def reader(*args)
      attr_reader(*args)
      args
    end

    def writer(*args)
      attr_writer(*args)
      args
    end

  end
end
