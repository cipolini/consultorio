class CreateMedicos < ActiveRecord::Migration
  def self.up
    create_table :medicos do |t|
      t.string :nome
      t.integer :systemuser_id
      t.string :crm
      t.string :login

      t.timestamps
    end
  end

  def self.down
    drop_table :medicos
  end
end
