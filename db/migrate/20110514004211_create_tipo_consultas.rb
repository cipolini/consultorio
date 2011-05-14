class CreateTipoConsultas < ActiveRecord::Migration
  def self.up
    create_table :tipo_consultas do |t|
      t.string :descricao
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_consultas
  end
end
