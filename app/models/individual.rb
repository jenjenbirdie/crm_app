class Individual < ActiveRecord::Base
	validates :firstName, :lastName, :department, :position, :contactType, :presence => true
	
	DEPARTMENT_TYPES = ["Admin", "IT", "Finance", "Development", "QA", "Others"]
	POSITION_TYPES  = ["CEO", "VP", "CFO", "Developer", "HR", "Others"]
    CONTACT_TYPES = ["Primary", "Secondary", "Regular"]
end
