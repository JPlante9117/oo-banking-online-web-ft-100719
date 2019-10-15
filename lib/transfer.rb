require 'pry'

class Transfer
  
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender.valid? && receiver.valid? ? true : false
  end
  
  def execute_transaction
    binding.pry
    if @sender.balance < @amount || @sender.status == "closed"
      "Transaction rejected. Please check your account balance."
      @status = "rejected"
    else
      if @status == "pending"
        @sender.withdraw(@amount)
        @receiver.deposit(@amount)
        @status = "complete"
      end
    end
  end
  
end
