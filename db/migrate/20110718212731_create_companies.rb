class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :companyName
      t.string :companyType
      t.string :customerType
      t.string :industry
      t.string :tinNo
      t.string :vip
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
