class CreateIndividuals < ActiveRecord::Migration
  def self.up
    create_table :individuals do |t|
      t.string :salutation
      t.string :firstName
      t.string :middleName
      t.string :lastName
      t.string :suffix
      t.string :department
      t.string :position
      t.string :positionDesc
      t.string :contactType
      t.text :description
      t.referenced :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :individuals
  end
end
