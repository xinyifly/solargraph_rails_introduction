require "rails_helper"

RSpec.describe Feeder do
  describe "factory" do
    subject { create(:feeder) }

    it { is_expected.to be_a described_class }

    it { has.to change { described_class.count }.by(1) }
  end
end
