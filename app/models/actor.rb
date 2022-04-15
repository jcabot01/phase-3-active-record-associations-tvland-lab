class Actor < ActiveRecord::Base
  #macros
  has_many :characters
  has_many :shows, through: :characters
  #methods
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles  #expected output is array, so use .map
    self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end