class BankAccount

  @@interest_rate = 0.10
  @@accounts = []

  attr_accessor :balance

  def initialize(account)
    @balance = 0
  end

  # def balance
  #   @balance
  # end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    @balance -= money
  end

  def self.create
    account = BankAccount.new(account)
    @@accounts << account
    return account
  end

  def self.total_funds
    # @@accounts.reduce(:+)
    sum = 0
    @@accounts.each do |account|
      sum = sum += account.balance
    end
  end

  def self.interest_time
    @@accounts.each do |account|
      account.balance += account.balance * @@interest_rate
    end
  end
end


my_account = BankAccount.create
your_account = BankAccount.create
puts my_account.balance # 0
puts BankAccount.total_funds # 0
my_account.deposit(200)
your_account.deposit(1000)
puts my_account.balance # 200
puts your_account.balance # 1000
puts BankAccount.total_funds # 1200
BankAccount.interest_time
puts my_account.balance # 202.0
puts your_account.balance # 1010.0
puts BankAccount.total_funds # 1212.0
my_account.withdraw(50)
puts my_account.balance # 152.0
puts BankAccount.total_funds # 1162.0
