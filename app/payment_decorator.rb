Spree::Payment.class_eval do
  before_save :mark_as_paid
  def mark_as_paid
    self.state = "completed"
  end
end

