# your code goes here
require 'pry'

class Person

  attr_reader :name
  # attr_writer
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize name
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness= rate
    rate > 10 ? @happiness = 10 : rate < 0 ? @happiness = 0 : @happiness = rate
  end

  def hygiene= rate
    rate > 10 ? @hygiene = 10 : rate < 0 ? @hygiene = 0 : @hygiene = rate
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid amount
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = @happiness += 2
    self.hygiene = @hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend friend
    self.happiness +=3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation friend, topic
    case topic
    when "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end
end

# walker = Person.new "Walker"
# friend = Person.new "friend"
# puts walker.happiness
# puts friend.happiness
# puts walker.start_conversation friend, ""
# puts walker.happiness
# puts friend.happiness

# binding.pry
# 0