require_relative '../lib/ransible'

# The basic Ransible module
RSpec.describe Ransible do
  it 'executes a block' do
    expect { |b| described_class.module(&b) }.to yield_control
  end

  it 'passes the params' do
    expect { |b| described_class.module(&b) }.to yield_with_args('a', 'b')
  end
end
