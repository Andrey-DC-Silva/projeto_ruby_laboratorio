require 'date'

require_relative '../modelo/Mostrar'
require_relative '../modelo/Pesquisador'
require_relative '../modelo/Equipamento'
require_relative '../modelo/Sala'

class Experimento
  include Mostrar
  attr_reader :codigo
  attr_accessor :titulo, :descricao, :dt_realizacao, :sala, :equipamentos, :responsavel
  
  def initialize(codigo, titulo, descricao, dt_realizacao, sala, equipamentos = [], responsavel)
    @codigo = codigo
    @titulo = titulo
    @descricao = descricao
    @dt_realizacao = dt_realizacao
    @sala = sala
    @equipamentos = []
    @responsavel = responsavel
  end

  def adicionar_equipamento(equipamento)
    if equipamento
      @equipamentos << equipamento
    end
  end

  def mostrar_dados
    puts ""
    puts "==============================="
    puts "---- Dados do Experimento ----"
    puts "Código: #{codigo}"
    puts "Título: #{titulo}"
    puts "Descrição: #{descricao}"
    puts "Data de Realização: #{dt_realizacao.strftime('%d/%m/%Y')}"
    puts "Sala: #{sala}"
    puts "Responsável: #{responsavel}"
    puts "- Equipamentos Utilizados:"
    if @equipamentos_usados.nil? || @equipamentos_usados.empty?# nil == null
      puts "  Nenhum equipamento registrado."
    else
      @equipamentos.each do |e|
        puts " - #{e.modelo}(#{e.estado})"
      end
    end
    puts "==============================="
  end

  def mostrar_resumo
    
  end

end