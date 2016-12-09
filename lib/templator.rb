require "thor"
require_relative "templator/generator"
require_relative "templator/version"

module Templator
  class Executor < Thor
    desc "generate", "Generate content from template and vars"
    option :template, required: true, aliases: '-t'
    option :var_file, required: true, aliases: '-f'
    option :output_path, aliases: '-o'
    option :extra_vars, default: '', desc: 'Support key=value pairs only, separated by commas', banner: '"key=value,other_key=other_value"'
    def generate
      extra_vars = convert_extra_vars(options[:extra_vars])
      generator = Templator::Generator.new(options[:template], options[:var_file], extra_vars)
      say generator.generate(options[:output_path])
    end

    desc 'version', 'Current version'
    map %w[-v --version] => :version
    def version
      say Templator::VERSION
    end

    private

    def convert_extra_vars(args = "")
      args.split(',').reduce({}) do |hash, kv|
        key, value = kv.split('=').map(&:strip)
        hash[key] = value
        hash
      end
    end
  end
end

Templator::Executor.start
