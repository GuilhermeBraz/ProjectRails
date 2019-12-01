class CreatePerfils < ActiveRecord::Migration[6.0]
  def change
    create_table :perfils do |t|
      t.integer :idade
      t.float :altura
      t.boolean :sexo
      t.boolean :ativo
      t.float :peso
      t.string :objetivo
      t.string :atividade
      t.float :caloria
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
