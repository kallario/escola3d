class CreateDonsLatentesView < ActiveRecord::Migration[5.0]
  def up
    execute <<-SQL
      CREATE VIEW dons_latentes AS
          SELECT b.usuario_id, b.dom_id,  b.valor FROM resultados b
          LEFT JOIN
          (SELECT a.dom_id, a.tipo, a.valor FROM resultados a WHERE a.tipo = 1 ORDER BY a.valor DESC LIMIT 5) AS m
          ON m.dom_id = b.dom_id
          WHERE b.tipo = 2 AND m.dom_id IS NULL
    SQL
  end

  def down
    execute "DROP VIEW dons_latentes"
  end
end
