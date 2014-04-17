class Car < ActiveRecord::Base

  has_many :packages
  has_many :fitments, through: :packages

  def rims
    self.fitments.collect { |fitment| Rim.where("et >= ? AND et <= ?", fitment.et_min, fitment.et_max) }.flatten
  end

  def tires
    Tire.where("diameter <= ?", self.max_tire_size)
  end

end
