class BankAccount
  
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(deposit_amount)
    @balance += deposit_amount
  end
  
  def withdraw(withdraw_amount)
    @balance -= withdraw_amount
  end
  
  def display_balance
    "Your balance is $#{@balance}."
  end
  
  def valid?
    @balance > 0 && @status == "open" ? true : false
  end
  
  def close_account
    @status = "closed"
  end
  
end
