class Subscription < ApplicationRecord

  attr_accessor :card_number, :exp_month, :exp_year, :cvc
  belongs_to :plan
  belongs_to :technician
  validates :stripe_id, presence: true, uniqueness: true
  before_validation :create_stripe_reference, on: :create
  before_update :cancel_stripe_subscription, if: :subscription_inactive?

  def create_stripe_reference
    Stripe::Customer.create_source(
        technician.stripe_id,
      { source: generate_card_token }
    )
    response = Stripe::Subscription.create({
      customer: technician.stripe_id,
      items: [
        { price: plan.stripe_price_id }
      ]
    })
    self.stripe_id = response.id
  end
  def generate_card_token
    Stripe::Token.create({
      card: {
        number: card_number,
        exp_month: exp_month,
        exp_year: exp_year,
        cvc: cvc
      }
    }).id
  end

  def cancel_stripe_subscription
    Stripe::Subscription.cancel(stripe_id)
  end

  def subscription_inactive?
    !active
  end
  
end
