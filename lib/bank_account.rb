require 'pry' 

class BankAccount
attr_reader :name , :balance , :status

def initialize(name)
@name = name
@balance = 1000 
@status = "open"
end 

def deposit(amount) 
  @balance += amount
end 

def display_balance
  "Your balance is $#{balance}."
end 

def valid?
 @broke.balance = 0
 @closed.status = "closed"
 @status == "open" && @balance > 0
 binding.pry
  end

def close_account
  @status = "closed"
end 


end
