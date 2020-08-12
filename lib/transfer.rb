class Transfer
 attr_accessor :amount , :sender , :receiver
 attr_reader :status , :transfer
 
 def initialize(sender, receiver , amount)
 @transfer 
 @amount = amount
 @sender = sender
 @receiver = receiver
 @status = "pending"
 end
 
 def valid?
   sender.valid? && receiver.valid?
 end 
 
 def execute_transaction
  if self.valid? && self.status != "complete" && @sender.balance > @amount
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  else
    @status = "rejected"
    "Transaction rejected. Please check your account balance."
end
end
 
 
def reverse_transfer
  @sender.balance += @amount
  @receiver.balance -= @amount
end 
 
 
end
