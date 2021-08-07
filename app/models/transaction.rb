class Transaction < ApplicationRecord
  belongs_to :wallet
  belongs_to :user

  enum transaction_type: { income: "INCOME", outcome: "OUTCOME" }

  before_save :change_amount_value, if: :outcome?

  # Add validation of amount if income/outcome

  private

  def change_amount_value
    return if amount < 0
    self.amount = amount * -1
  end
end
