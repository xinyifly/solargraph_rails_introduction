require "rails_helper"

RSpec.describe Toilet do
  describe "factory" do
    subject { create(:toilet) }

    it { is_expected.to be_a described_class }

    it { has.to change { described_class.count }.by(1) }
  end

  describe "#collect" do
    subject { toilet.collect }

    let(:toilet) { create(:toilet, registers: { 1 => 23 }) }

    it { is_expected.to eq 23 }
  end

  describe "#cleaning" do
    subject { toilet.cleaning }

    let(:toilet) { create(:toilet, coils: { 1 => false }) }

    it { is_expected.to be false }
  end
end
