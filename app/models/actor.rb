class Actor < ActiveRecord::Base
  #macros it has access to these other tables
  has_many :characters
  has_many :shows, through: :characters


  #methods
  def full_name #assumes an actor search, so self = actor table
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles  #expected output is array, so use .map
    #actor = self.  Return the characters associated with that character,
    #interpolate character name and show name (access show through characters)
    self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end