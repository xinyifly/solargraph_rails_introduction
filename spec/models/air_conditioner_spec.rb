require "rails_helper"

RSpec.describe AirConditioner do
  describe "factory" do
    subject { create(:air_conditioner) }

    it { is_expected.to be_a described_class }

    it { has.to change { described_class.count }.by(1) }
  end

  describe "#temperature" do
    subject { air_conditioner.temperature }

    let(:air_conditioner) { create(:air_conditioner, registers: { 1 => 250 }) }

    it { is_expected.to eq 25.0 }
  end

  describe "#humidity" do
    subject { air_conditioner.humidity }

    let(:air_conditioner) { create(:air_conditioner, registers: { 2 => 43 }) }

    it { is_expected.to eq 43 }
  end

  describe "#heating" do
    subject { air_conditioner.heating }

    let(:air_conditioner) { create(:air_conditioner, coils: { 1 => false }) }

    it { is_expected.to be false }
  end

  describe "#cooling" do
    subject { air_conditioner.cooling }

    let(:air_conditioner) { create(:air_conditioner, coils: { 2 => false }) }

    it { is_expected.to be false }
  end

  describe "#humidifying" do
    subject { air_conditioner.humidifying }

    let(:air_conditioner) { create(:air_conditioner, coils: { 3 => false }) }

    it { is_expected.to be false }
  end

  describe "#dehumidifying" do
    subject { air_conditioner.dehumidifying }

    let(:air_conditioner) { create(:air_conditioner, coils: { 4 => false }) }

    it { is_expected.to be false }
  end
end
