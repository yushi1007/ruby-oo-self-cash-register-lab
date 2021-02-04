class CashRegister

    attr_accessor :items, :discount, :total, :last_transaction
    # (discount=0) is the argument
    def initialize(discount=0)
    # sets an instance variable @total on initialization to zero (@total = 0)
    # optionally takes an employee discount on initialization (@discount = discount)
      @total = 0
      @discount = discount
      @items = []
    end
  
    def add_item(title, amount, quantity=1)
# self.total = self.total + amount * quantity
      self.total += amount * quantity
# The times loop
      quantity.times do
# "<<" is a method in Ruby that is commonly used to push an object onto an array, but you can shovel into strings as well.
        items << title
      end
      self.last_transaction = amount * quantity
    end
  
    def apply_discount
        # "!=" means not equal
      if discount != 0
    # applies the discount to the total price
    # to_i will return an integer
    # to_f will return the float value of the number
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    # returns success message with updated total
        "After the discount, the total comes to $#{self.total}."
      else
    # returns a string error message that there is no discount to apply
        "There is no discount to apply."
      end
    end
  
    def void_last_transaction
    # subtracts the last item from the total
    # returns the total to 0.0 if all items have been removed
      self.total = self.total - self.last_transaction
    end
  end