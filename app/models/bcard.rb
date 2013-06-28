class Bcard < ActiveRecord::Base
  attr_accessible :city, :company, :notes, :entered_by, :desc, :phone, :state, :website
end
