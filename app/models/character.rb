class Character < ActiveRecord::Base
  #macros
  belongs_to :actor
  belongs_to :show
  #methods
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end