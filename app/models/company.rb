class Company < ActiveRecord::Base

	has_many :individuals

	validates :companyName, :customerType, :industry, :presence => true
	validates :companyName, :uniqueness => true
	
	COMPANY_TYPES = ["Parent", "Child", "Sole"]
	CUSTOMER_TYPES = ["Partner", "Competitor", "Former Customer", "Vendor", "Reseller"]
	INDUSTRY_TYPES = ["Software", "Manufacturing", "Finance", "Healthcare", "Others"]
	VIP_TYPES = ["Low", "Medium", "High"]
end
