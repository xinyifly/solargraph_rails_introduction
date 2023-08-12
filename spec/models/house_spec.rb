require "rails_helper"

RSpec.describe House do
  describe "factory" do
    subject { create(:house) }

    it { is_expected.to be_a described_class }

    it { has.to change(described_class, :count).by(1) }
  end
end
