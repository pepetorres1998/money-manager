require 'rails_helper'

RSpec.describe "wallets/show", type: :view do
  before(:each) do
    @wallet = assign(:wallet, Wallet.create!(
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
