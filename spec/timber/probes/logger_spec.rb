require "spec_helper"

describe Timber::Probes::Logger do
  describe described_class::InstanceMethods do
    describe ".add" do
      let(:logger) { ::Logger.new(nil) }
      let(:context_class) { Timber::Contexts::Logger }

      it "should set the context" do
        expect(Timber::CurrentContext).to receive(:add).with(kind_of(context_class)).and_yield.once
        logger.info("test")
      end
    end
  end
end
