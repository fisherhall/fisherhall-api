require 'rails_helper'

RSpec.describe Organization, type: :model do
  it "has a valid factory" do
    expect(build(:organization)).to be_valid
  end

  context "when creating an organization" do
    it "will generate a slug" do
      expect(create(:organization, name: "my organization").slug).
        to eq "my-organization"
    end

    it "allows you to customize your slug" do
      expect(create(:organization, name: "my organization", slug: "my-slug").slug).
        to eq "my-slug"
    end
  end
end
