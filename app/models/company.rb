class Company < ActiveRecord::Base
	validates :companyName, :customerType, :industry, :presence => true
	validates :companyName, :uniqueness => true
end
