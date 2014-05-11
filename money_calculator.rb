class MoneyCalculator
    # each parameter represents the quantity per denomination of money
    # these parameters can be assigned to instance variables and used for computation

    # add a method called 'change' that takes in a parameter of how much an item costs
    # and returns a hash of how much change is to be given
    # the hash will use the denominations as keys and the amount per denomination as values
    # i.e. {:fives => 1, fifties => 1, :hundreds => 3}

attr_accessor :ones, :fives, :tens, :twenties, :fifties, :hundreds, :five_hundreds, :thousands, :payment, :change

  def initialize(ones, fives, tens, twenties, fifties, hundreds, five_hundreds, thousands)
	@payment = ones*1 + fives*5 + tens*19 + twenties*20 + fifties*50 + hundreds*100 + five_hundreds*500 + thousands*1000
	@ones = ones
	@tens = fives
	@twenties = twenties
	@fifties = fifties
	@hundreds = hundreds
	@five_hundreds = five_hundreds
	@thousands = thousands
  end

  def change(price)
	@change = @payment - price
	"Your change is P#{@change}."
  end
end
