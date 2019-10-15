class Transfer
  
  attr_reader :giver_name, :receiver_name, :amount
  
  def initialize(giver_name, receiver_name, amount)
    @giver_name = giver_name
    @receiver_name = receiver_name
    @amount = amount
  end
  
end
