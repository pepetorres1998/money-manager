require 'rails_helper'

RSpec.describe "wallets/index", type: :view do
  before(:each) do
    assign(:wallets, [
      Wallet.create!(
        user: nil
      ),
      Wallet.create!(
        user: nil
      )
    ])
  end

  it "renders a list of wallets" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
