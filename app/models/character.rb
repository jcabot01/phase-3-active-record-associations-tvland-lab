class Character < ActiveRecord::Base
  #macros
  belongs_to :actor
  belongs_to :show
  #methods
  def say_that_thing_you_say
    #character = self.   Character name always says their catchphrase (added column)
    "#{self.name} always says: #{self.catchphrase}"
  end
end