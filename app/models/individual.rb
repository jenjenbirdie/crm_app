class Individual < ActiveRecord::Base
    
	belongs_to :company
	validates :firstName, :lastName, :department, :position, :contactType, :presence => true
	
	DEPARTMENT_TYPES = ["Admin", "IT", "Finance", "Development", "QA", "Others"]
	POSITION_TYPES  = ["CEO", "VP", "CFO", "Developer", "HR", "Others"]
    CONTACT_TYPES = ["Primary", "Secondary", "Regular"]
end
