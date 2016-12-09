require "thor"
require_relative "templator/generator"
require_relative "templator/version"

module Templator
  class Executor < Thor
    desc "generate", "Generate content from template and vars"
    option :template, required: true
    option :var_file, required: true
    option :output_path
    def generate
      generator = Templator::Generator.new(options[:template], options[:var_file])
      puts generator.generate(options[:output_path])
    end
  end
end

