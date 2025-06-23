require 'date'

require_relative '../modelo/Mostrar'
require_relative '../modelo/Pesquisador'
require_relative '../modelo/Equipamento'
require_relative '../modelo/Sala'
require_relative '../modelo/Experimento'

class Projeto
  include Mostrar
  attr_accessor :nome, :descricao, :dt_inicio, :dt_fim, :status, :pesquisadores, :experimentos

  def initialize(nome, descricao, dt_inicio, dt_fim, status, pesquisadores = [], experimentos = [])
    @nome = nome
    @descricao = descricao
    @dt_inicio = dt_inicio
    @dt_fim = dt_fim
    @status = status
    @pesquisadores = []
    @experimentos = []
  end


  def adicionar_pesquisador(pesquisador)
    if pesquisador
      @pesquisadores << pesquisador
    end
  end

  def adicionar_experimento(experimento)
    if experimento
      @experimentos << experimento
    end
  end

  def mostrar_dados
    puts ""
    puts "==============================="
    puts "---- Dados do Projeto ----"
    puts "Título: #{@titulo}"
    puts "Descrição: #{@descricao}"
    puts "Início: #{@dt_inicio.strftime('%d/%m/%Y')}"
    if @dt_fim
      puts "Fim: #{@dt_fim.strftime('%d/%m/%Y')}"
    end
    puts "Status: #{@status}"
    
    puts "Pesquisadores envolvidos:"
    @pesquisadores.each do |p|
      puts " - ID: #{p.id}, Nome: #{p.nome}"
    end
    
    puts "Experimentos relacionados:"
    if @experimentos.empty?
      puts " Nenhum experimento associado."
    else
      @experimentos.each do |e|
        puts " - Código: #{e.codigo}, Título: #{e.titulo}, Data: #{e.dt_realizacao.strftime('%d/%m/%Y')}"
      end
    end
    puts "==============================="
  end

  def mostrar_resumo
    puts ""
    puts "==============================="
    puts "---- Resumo do Projeto ----"
    puts "Título: #{@titulo}"
    puts "Status: #{@status}"
    print " - Início: #{@dt_inicio.strftime('%d/%m/%Y')}"
    if @dt_fim
      puts " - Fim: #{@dt_fim.strftime('%d/%m/%Y')}"
    end
    puts "==============================="
  end
end