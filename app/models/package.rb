class Package < ActiveRecord::Base

  belongs_to :car
  belongs_to :fitment

end
