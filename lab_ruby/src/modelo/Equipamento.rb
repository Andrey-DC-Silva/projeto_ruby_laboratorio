require_relative '../modelo/Mostrar'
require_relative '../modelo/Sala'

class Equipamento
  include Mostrar
  attr_accessor :modelo, :descricao, :estado, :sala

  def initialize(modelo, descricao, estado, sala)
    @modelo = modelo
    @descricao = descricao
    @estado = estado
    @sala = sala
  end

  def mostrar_dados
    puts ""
    puts "==============================="
    puts "---- Dados do Equipamento ----" # puts imprime e causa break line
    puts "Modelo: #{modelo}"
    puts "Descrição: #{descricao}"
    puts "Estado: #{estado}"
    puts "Sala: #{@sala}"
    puts "==============================="
  end

  def mostrar_resumo
    puts ""
    puts "==============================="
    puts "--- Resumo do Equipamento ---"
    puts "Modelo: #{modelo}"
    puts "Estado: #{estado}"
    puts "Sala: #{@sala}"
    puts "==============================="
  end

end