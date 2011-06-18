class Ticket < ActiveRecord::Base
  validates :number, :presence => true
  validates :customer, :presence => true
  validates :date_in, :presence => true
  validates :in_by, :presence => true
  validates :make, :presence => true
  validates :model, :presence => true
  validates :serial, :presence => true
end
