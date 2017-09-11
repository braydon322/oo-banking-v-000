class BankAccount

  attr_accessor
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    
  end

end
