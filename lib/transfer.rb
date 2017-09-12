class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    (sender.balance > amount && sender.status == "open") ? true : false

  end

  def reverse_transfer
  end

  def execute_transaction

  end



end
