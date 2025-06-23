require_relative '../modelo/Mostrar'
require_relative '../modelo/Pessoa'
require_relative '../modelo/Equipamento'
require_relative '../modelo/Sala'

class Tecnico < Pessoa
  include Mostrar
  attr_accessor :especializacao, :equipamentos

  def initialize(id, nome, cpf, dt_nasc, especializacao, equipamentos)
    super(id, nome, cpf, dt_nasc)
    @especializacao = especializacao
    @equipamentos = []
  end

  def adicionar_equipamento(equipamento)
    if equipamento
      @equipamentos << equipamento
    end
  end

  def mostrar_dados
    puts
    puts "==============================="
    puts "---- Dados do Técnico ----"
    puts "ID: #{@id}"
    puts "Nome: #{@nome}"
    puts "CPF: #{@cpf}"
    puts "Data de Nascimento: #{@dt_nasc.strftime('%d/%m/%Y')}"
    puts "Especialização: #{@especializacao}"

    puts "- Equipamentos Operados:"
    if @equipamentos.empty?
      puts "Nenhum equipamento registrado."
    else
      @equipamentos.each do |equipamento|
        puts " - #{equipamento.modelo} / Sala: #{equipamento.sala}"
      end
    end
    puts "=============================="
  end

  def mostrar_resumo
    puts
    puts "==============================="
    puts "--- Resumo do Técnico ---"
    puts "ID: #{@id}"
    puts "Nome: #{@nome}"
    puts "Especialização: #{@especializacao}"
    puts "==============================="
  end
end