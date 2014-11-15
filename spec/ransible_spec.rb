require_relative '../lib/ransible'

# The basic Ransible module
RSpec.describe Ransible do

  let(:args) { double :arguments }
  before do
    allow(described_class).to receive(:arguments).and_return(args)
  end

  it 'executes a block' do
    expect { |b| described_class.module(&b) }.to yield_control
  end

  it 'passes the params' do
    result = double :result
    allow(Ransible::Result).to receive(:new).and_return(result)
    expect { |b| described_class.module(&b) }.to yield_with_args(result, args)
  end
end
