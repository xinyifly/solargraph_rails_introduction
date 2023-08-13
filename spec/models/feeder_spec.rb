require "rails_helper"

RSpec.describe Feeder do
  describe "factory" do
    subject { create(:feeder) }

    it { is_expected.to be_a described_class }

    it { has.to change { described_class.count }.by(1) }
  end

  describe "#food" do
    subject { feeder.food }

    let(:feeder) { create(:feeder, registers: { 1 => 78 }) }

    it { is_expected.to eq 78 }
  end

  describe "#water" do
    subject { feeder.water }

    let(:feeder) { create(:feeder, registers: { 2 => 52 }) }

    it { is_expected.to eq 52 }
  end
end
