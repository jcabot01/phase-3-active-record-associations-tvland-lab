class Network < ActiveRecord::Base
  #macros
  has_many :shows

  #methods
  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end
