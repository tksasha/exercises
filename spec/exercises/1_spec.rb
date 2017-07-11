require 'spec_helper'

RSpec.describe Calculator do
  subject { described_class.new 2, 3 }

  its(:sum) { should eq 5 }

  describe '.sum' do
    before do
      #
      # described_class.new(3, 4).sum
      #
      expect(described_class).to receive(:new).with(3, 4) do
        double.tap { |a| expect(a).to receive(:sum) }
      end
    end

    subject { described_class.sum 3, 4 }

    it { expect { subject }.to_not raise_error }
  end
end
