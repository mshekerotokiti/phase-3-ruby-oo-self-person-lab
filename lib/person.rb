# your code goes here
class Person
attr_reader :name,:happiness,:hygiene
attr_accessor :bank_account
def initialize(name,bank_account=25,happiness=8,hygiene=8)
 @name=name
 @bank_account=bank_account
 @happiness=happiness
 @hygiene=hygiene
end

def happiness=(value)
   if value>10
       @happiness=10
   elsif value<0
       @happiness=0
   else
       @happiness=value
   end
end

def hygiene=(value)
    if value>10
        @hygiene=10
    elsif value<0
        @hygiene=0
    else
        @hygiene=value
    end
end

def clean?
    @hygiene>7?true:false
end

def happy? 
    @happiness>7?true:false
end

def get_paid(amount)
    @bank_account +=amount
    "all about the benjamins"
end

def take_bath
    @hygiene +=4
    self.hygiene = @hygiene
    @hygiene =10 if @hygiene>10
    "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    @hygiene -=3
    self.hygiene= hygiene
    @happiness +=2
    self.happiness =@happiness
     "♪ another one bites the dust ♫"
end

def call_friend(friend)
    friend.happiness+=3
    @happiness +=3
    self.happiness=@happiness
    "Hi #{friend.name}! It's #{@name}. How are you?"
end

def start_conversation(friend,topic)
    case topic
        when "politics" 
         @happiness -=2
         self.happiness=@happiness
         friend.happiness -=2
         "blah blah partisan blah lobbyist"

        when "weather" 
            @happiness +=1
            self.happiness = @happiness
            friend.happiness +=1
            "blah blah sun blah rain"

        else
            "blah blah blah blah blah" 
    end
end
end

mk=Person.new("mk")
presh=Person.new("presh")

pp presh.start_conversation(mk,"politics")