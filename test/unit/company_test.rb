require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "company attributes must not be empty" do
    company = Company.new
	assert company.invalid?
	assert company.errors[:companyName].any?
	#assert company.errors[:companyType].any?
	assert company.errors[:customerType].any?
	assert company.errors[:industry].any?
	#assert company.errors[:tinNo].any?
	#assert company.errors[:vip].any?
	#assert company.errors[:description].any?
  end
end
