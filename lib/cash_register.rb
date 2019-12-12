
class CashRegister 

    attr_accessor :items, :discount, :total, :last_transaction
    def initialize (discount = 0, total = 0)
    @total = total
    @discount = discount 
    @items = [] 

     end 

     def add_item (title, price, quanity = 1 )
     self.total += price * quanity 
     quanity.times do 
        items << title 
     end 
     self.last_transaction  = price * quanity
    end 

    def apply_discount
        if discount != 0
          self.total = (total * ((100.0 - discount.to_f)/100)).to_i
          return "After the discount, the total comes to $#{total}."
        else
          return "There is no discount to apply."
        end
      end
  

      def void_last_transaction 
        self.total = self.total - last_transaction
      end 

   

    
    
    

end 