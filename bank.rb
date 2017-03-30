class BankAccount

  @@interest_rate = 0.10
  @@accounts = []

  attr_accessor :balance

  def initialize
    @balance = 0

  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    @balance -= money
  end

  def self.create
    b = BankAccount.new
  end

end
