require "tilt"
require "erb"
require "yaml"
require "json"

module Templator
  class Generator
    attr_reader :template, :var_file

    def initialize(template, var_file, extra_args = {})
      @template = template
      @var_file = var_file
      @extra_args = extra_args
    end

    def generate(output_path = "")
      vars = load_vars_from_yaml(self.var_file)
      vars = vars.merge(@extra_args)

      template = Tilt.new(self.template)
      result = template.render(self, vars)

      write_output(output_path, result) if output_path && !output_path.empty?

      result
    end

    private

    def load_vars_from_yaml(var_file)
      YAML.load_file(var_file)
    end

    def write_output(output_path, content)
      File.write(output_path, content)
    end
  end
end

