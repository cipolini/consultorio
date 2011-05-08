class CreatePlanos < ActiveRecord::Migration
  def self.up
    create_table :planos do |t|
      t.string :descricao
      t.integer :convenio_id

      t.timestamps
    end
  end

  def self.down
    drop_table :planos
  end
end
