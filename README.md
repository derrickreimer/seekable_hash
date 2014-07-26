# SeekableHash

[![Code Climate](https://codeclimate.com/github/djreimer/seekable_hash.png)](https://codeclimate.com/github/djreimer/seekable_hash)

A simple Ruby gem for looking up values in deeply-nested hashes.

## Installation

Add this line to your application's Gemfile:

    gem 'seekable_hash'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install seekable_hash

## Usage

```ruby
hash = {
  "foo" => {
    "bar" => {
      "baz" => "boot"    
    }
  }
}

sh = SeekableHash[hash]

sh.seek("foo", "bar", "baz")
#=> "boot"

sh.seek("boot")
#=> nil
```

## Contributing

1. Fork it ( https://github.com/djreimer/seekable_hash/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
