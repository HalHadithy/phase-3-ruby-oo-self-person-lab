# your code goes here
require 'pry'
 
 
class Person     #creating a person class
 
   attr_reader :name
   attr_accessor :bank_account
   attr_reader :happiness
   attr_reader :hygiene
 
 
   #initialize the name
   def initialize (name)
       @name = name
       @bank_account = 25
       @happiness = 8
       @hygiene = 8
   end
 
  
   def happiness= (value)
       if value > 10
           @happiness = 10
       elsif value < 0
           @happiness = 0
       else
           @happiness = value
       end
   end
 
 
   def hygiene= (value)
       if value > 10
           @hygiene = 10
       elsif value < 0
           @hygiene = 0
       else
           @hygiene = value
       end
   end
 
 
   def clean?
       if @hygiene >7
           true
       else
           false
       end    
   end
 
 
   def happy?
       if @happiness >7
           true
       else
           false
       end    
   end
 
 
   def get_paid(amount)
       @bank_account = @bank_account + amount # or @bank_account += amount
       return "all about the benjamins"
   end
 
 
   def take_bath
       self.hygiene += 4 # or self.hygiene += 4... the .hygene tells us to look for a method with the name hygene
       # @hygene would tell us just to change the instance variable of hygene
       return "♪ Rub-a-dub just relaxing in the tub ♫"
   end
 
 
   def work_out
       self.happiness += 2
       self.hygiene -= 3
       return  "♪ another one bites the dust ♫"
   end
 
 
   def call_friend(friend)
       self.happiness += 3
       friend.happiness += 3
       return "Hi #{friend.name}! It's #{self.name}. How are you?"
   end
 
 
 
   def start_conversation(friend, topic)
       if topic == "politics"
           self.happiness -= 2
           friend.happiness -= 2
           return "blah blah partisan blah lobbyist"
       elsif topic == "weather"
           self.happiness += 1
           friend.happiness += 1
           return "blah blah sun blah rain"
       else
           return "blah blah blah blah blah"
       end
   end
   
   
end
 
   # getter, we can now see the name if we call: instance_name#name in the terminal
   # alternatively can write attr_reader :name
   # def name
   #     @name
 
   # #setter, this name= is different from #name, when we want to reset the name, we would call:
   # #       instance_name#name= "new name here that is technically and arguement for the name= method"
   # def name= (new_name)
   #   @name = new_name
