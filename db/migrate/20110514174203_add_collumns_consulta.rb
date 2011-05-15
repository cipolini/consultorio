class AddCollumnsConsulta < ActiveRecord::Migration
  def self.up
    add_column :consultas, :antecedentes,    :string
  end

  def self.down
  end
end
