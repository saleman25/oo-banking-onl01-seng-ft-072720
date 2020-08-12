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
 end 
 
 def reverse_transfer
 end 
 
 
end
