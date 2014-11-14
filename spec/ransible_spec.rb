require_relative '../lib/ransible'

# The basic Ransible module
RSpec.describe Ransible do

  let(:arguments) { double :arguments }
  before do
    allow(described_class).to receive(:arguments).and_return(arguments)
  end

  it 'executes a block' do
    expect { |b| described_class.module(&b) }.to yield_control
  end

  it 'passes the params' do
    expect { |b| described_class.module(&b) }.to yield_with_args(nil, arguments)
  end
end
