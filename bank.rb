class BankAccount

  @@interest_rate = 0.10
  @@accounts = []

  attr_accessor :balance

  def initialize
    @name = name
    @balance = 0

  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    @balance -= money
  end

  def self.create
    @@accounts [] = BankAccount.new
    @balance = 0
  end

  def self.total_funds
    @@accounts.reduce(:+)
  end

  def interest_time
    @@accounts.each do |a|
      a = (1 + @@interest_rate) * a
    end
  end
end


puts my_account = BankAccount.create
# puts my_account = BankAccount.new
