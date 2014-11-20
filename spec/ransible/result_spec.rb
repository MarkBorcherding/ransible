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

    describe '#change' do

      it 'should save all changed params' do
        subject.change! a: 1, b: 2
        subject.change! c: 3
        expect(subject.changes).to match(changed: true, a: 1, b: 2, c: 3)
      end
    end
  end
end
