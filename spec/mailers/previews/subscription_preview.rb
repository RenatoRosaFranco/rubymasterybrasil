# Preview all emails at http://localhost:3000/rails/mailers/subscription
class SubscriptionPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/subscription/signup
  def signup
    SubscriptionMailer.signup
  end

end
