# K-Templator

[![Build Status](https://travis-ci.org/khaiql/k-templator.svg?branch=master)](https://travis-ci.org/khaiql/k-templator) [![Gem Version](https://badge.fury.io/rb/k-templator.svg)](https://badge.fury.io/rb/k-templator)

Tini tool to generate new content using ERB template and YAML var file. Useful in CI/CD where you generate configuration for different environments.

## Installation
```
$ gem install k-templator
```
## Usage

`templator generate --template=TEMPLATE --var-file=VAR_FILE  # Generate content from template and vars`

**Where**:
- `TEMPLATE`: path to ERB template file
- `VAR_FILE`: path to YAML file

**Example template and var file**: [https://github.com/khaiql/k-templator/tree/master/spec/fixtures](https://github.com/khaiql/k-templator/tree/master/spec/fixtures)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/khaiql/k-templator.

## License

MIT
