class Equipamerno
  include Mostrar
  attr_accessor :modelo, :descricao, :estado, :Sala

  def initialize(modelo, descricao, estado, sala)
    @modelo
    @descricao
    @estado
    @sala
  end

  def mostrar_dados
    puts "---- Dados do Equipamento ----" # puts imprime e causa break line
    puts "Modelo: #{modelo}"
    puts "Descrição: #{descricao}"
    puts "Estado: #{estado}"
    puts "Sala: #{sala}"
  end

  def mostrar_resumo
  puts "--- Resumo do Equipamento ---"
  puts "Modelo: #{modelo}"
  puts "Estado: #{estado}"
  puts "Sala: #{sala}"
  end