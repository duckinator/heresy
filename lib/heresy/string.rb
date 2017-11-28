require "heresy/version"

class String
  if method_defined?("format")
    raise RuntimeError, "Required heresy/string, but String#format() is already defined!"
  end

  ##
  # String format.
  #
  # +"{2} {1} {foo} {bar}".format('1', '2', foo: 'foo', 'bar' => 'bar')+
  # becomes +"2 1 foo bar"+.
  def format(*args)
    hsh = args.last.is_a?(Hash) ? args.last : {}

    self.clone.gsub(/{(\S)}/) do
      hsh[$1] || hsh[$1.to_sym] || args[$1.to_i]
    end
  end
end

