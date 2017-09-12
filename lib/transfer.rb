require 'pry'

class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    (sender.balance > amount) && (sender.status == "open") ? true : false
  end

  def reverse_transfer
  end

  def execute_transaction
    if valid?
      sender.balance = sender.balance - amount
      receiver.balance = receiver.balance + amount
      status = "complete"
    else
      status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end



end
