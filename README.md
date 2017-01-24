# K-Templator

[![Build Status](https://travis-ci.org/khaiql/k-templator.svg?branch=master)](https://travis-ci.org/khaiql/k-templator) [![Gem Version](https://badge.fury.io/rb/k-templator.svg)](https://badge.fury.io/rb/k-templator)

Tini tool to make use of ERB template and yaml format for generating content of file

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'k-templator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install k-templator

## Usage

`templator generate --template=TEMPLATE --var-file=VAR_FILE  # Generate content from template and vars`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/khaiql/k-templator.

## License

MIT
