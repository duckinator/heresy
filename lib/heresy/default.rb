require "heresy/version"

module Heresy::DefaultValue
  def self.nil?
    true
  end

  def self.inspect
    "default"
  end
end

module Kernel
  def default
    Heresy::DefaultValue
  end

  def default?
    self == default
  end
end

