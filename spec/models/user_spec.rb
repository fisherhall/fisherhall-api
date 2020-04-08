require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid default factory" do
    expect(create(:user)).to be_valid
  end
end
