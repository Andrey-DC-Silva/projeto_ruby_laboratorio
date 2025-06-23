require_relative '../modelo/Mostrar'
require_relative '../modelo/Tecnico'
require_relative '../modelo/Equipamento'

class Sala
  include Mostrar

  attr_accessor :codigo, :tipo, :estado, :equipamentos

  def initialize(codigo, tipo, estado, equipamentos)
    @codigo = codigo
    @tipo = tipo
    @estado = estado
    @equipamentos = []
  end

  def adicionar_equipamento(equipamento)
    if equipamento
      @equipamentos << equipamento
    end
  end

  def to_s
    @codigo
  end

  def mostrar_dados
    puts ""
    puts "==============================="
    puts "---- Dados da Sala ----"
    puts "Código: #{@codigo}"
    puts "Tipo: #{@tipo}"
    puts "Estado: #{@estado}"
    puts "-Equipamentos na Sala:"
    if @equipamentos.empty?
      puts " Nenhum equipamento no local."
    else
      @equipamentos.each do |e|
        puts " - #{e.modelo}, Estado: #{e.estado}"
      end
    end
    puts "==============================="
  end

  def mostrar_resumo
    puts ""
    puts "==============================="
    puts "--- Resumo da Sala ---"
    puts "Código: #{@codigo}"
    puts "Tipo: #{@tipo}"
    puts "Estado: #{@estado}"
    puts "==============================="
  end

end
