require_relative '../../lib/ransible/result'

# The result specs
module Ransible
  RSpec.describe Result do
    describe '#fail!' do
      it 'should raise an error' do
        expect do
          subject.fail! 'some message'
        end.to raise_error FailError, 'some message'
      end
    end
  end
end
