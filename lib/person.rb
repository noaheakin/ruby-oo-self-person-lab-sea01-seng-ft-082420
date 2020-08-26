class Person
    
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(happiness)
        @happiness = happiness
        if @happiness < 0
            @happiness = 0
        elsif @happiness > 10
            @happiness = 10
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene < 0
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(initiator, topic)
        if topic == 'weather'
            self.happiness += 1
            initiator.happiness += 1
            return 'blah blah sun blah rain'
        elsif topic == 'politics'
            self.happiness -= 2
            initiator.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        else 
            return "blah blah blah blah blah"
        end
    end
end
