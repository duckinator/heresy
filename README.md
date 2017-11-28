# Heresy

An alternative standard library for Ruby. It's not _avoiding_ compatability,
but it's not really aiming for it, either.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'heresy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install heresy

## Usage

### String#format

```ruby
"{2} {1} {foo} {bar}".format('1', '2', foo: 'foo', 'bar' => 'bar')
# => "2 1 foo bar"
```

### Default

```ruby
def foo(bar = default)
  bar = "default value for bar" if bar.default?

  bar
end

foo      #=> "default value for bar"
foo(1)   #=> 1
foo(nil) #=> nil
```

### Scoped Accessors

Instead of:

```ruby
attr_accessor :foo, :bar, :baz
protected :foo, :bar, :baz

attr_reader :foo2, :bar2, :baz2
protected :foo2, :bar2, :baz2

attr_writer :foo3, :bar3, :baz3
protected :foo3, :bar3, :baz3
```

you can do:

```ruby
require 'scoped_accessors'

protected accessor(:foo, :bar, :baz)
protected reader(:foo2, :bar2, :baz2)
protected writer(:foo3, :bar3, :baz3)
```

And ditto for `private` and `public`.

### Net::Socket

[Net::Socket provides an alternative Socket API for
Ruby.](https://github.com/ruby-heresy/net-socket)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/heresy.

