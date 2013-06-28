class Bcard < ActiveRecord::Base
  attr_accessible :city, :company, :contact_email, :contact_name, :contact_pos, :contact_tel, :desc, :phone, :state, :website
end
