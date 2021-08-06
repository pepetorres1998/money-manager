require 'rails_helper'

RSpec.describe "transactions/index", type: :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        wallet: nil
      ),
      Transaction.create!(
        wallet: nil
      )
    ])
  end

  it "renders a list of transactions" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
