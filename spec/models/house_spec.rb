require "rails_helper"

RSpec.describe House do
  describe "factory" do
    subject { create(:house) }

    it { is_expected.to be_a described_class }

    it { has.to change(described_class, :count).by(1) }

    context "with devices" do
      subject { create(:house, :with_devices) }

      it { has.to change(AirConditioner, :count).by(1) }

      it { has.to change(Feeder, :count).by(1) }

      it { has.to change(Toilet, :count).by(1) }
    end
  end
end
