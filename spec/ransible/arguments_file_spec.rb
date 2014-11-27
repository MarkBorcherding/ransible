require_relative '../../lib/ransible/arguments_file'
# Testing the arguments file parser
module Ransible
  RSpec.describe ArgumentsFile do
    let(:filename) { double :filename }
    let(:file_contents) { 'a=bar b=foo' }

    before do
      allow(File).to receive(:read).with(filename).and_return(file_contents)
    end
    it 'should parse the file to json' do
      expect(described_class.new(filename).to_hash).to match('a' => 'bar', 'b' => 'foo')
    end
  end
end
