namespace :export do
  desc "Prints Usuarios.all in a seeds.rb way."
  task :seeds_format => :environment do
    Usuario.order(:id).all.each do |usuario|
      puts "Usuario.create(#{usuario.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    Dom.order(:id).all.each do |dom|
      puts "Dom.create(#{dom.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end      
    Grupo.order(:id).all.each do |grupo|
      puts "Grupo.create(#{grupo.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end    
    Pergunta.order(:id).all.each do |pergunta|
      puts "Pergunta.create(#{pergunta.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end  
    Resposta.order(:id).all.each do |resposta|
      puts "Resposta.create(#{resposta.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end 
  end
end