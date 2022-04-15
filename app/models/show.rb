class Show < ActiveRecord::Base
  #macros
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  #methods
  def actors_list #expected output is array, so use .map
    #list of full names of each actor based on show search.  self = showName
    #we have access to actors through characters
    self.actors.map do |actor|
      "#{actor.first_name} #{actor.last_name}"
    end
  end
end