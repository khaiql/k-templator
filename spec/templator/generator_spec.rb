require "spec_helper"
# require "templator/generator"

describe Templator::Generator do
  let(:template) { "spec/fixtures/templates/test.erb" }
  let(:var_file) { "spec/fixtures/vars/test.yml" }
  let(:generator) { Templator::Generator.new(template, var_file) }
  let(:expected_output) do
    <<-OUTPUT
Hello generator
This is an array with items:
- first
- second
- third
    OUTPUT
  end


  describe "#generate" do
    context "when not having out params" do
      it 'returns file content' do
        output = generator.generate
        expect(output).to match(expected_output)
      end
    end

    context 'when having extra args' do
      let(:extra_args) { {"name" => "k templator"} }
      let(:generator) { Templator::Generator.new(template, var_file, extra_args) }
      let(:expected_output) do
        <<-OUTPUT
Hello k templator
This is an array with items:
- first
- second
- third
        OUTPUT
      end

      it 'merges extra args with var_file' do
        output = generator.generate
        expect(output).to match(expected_output)
      end
    end

    context "when having out params" do
      let(:out_path) { "spec/templator/test_output.txt" }

      before do
        @output = generator.generate(out_path)
      end

      after do
        File.delete(out_path)
      end

      it 'writes file to disk at specified path' do
        expect(File.exists?(out_path)).to eq(true)
      end

      it 'generates file content as expected' do
        expect(File.read(out_path)).to match(expected_output)
      end
    end
  end
end
