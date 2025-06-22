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

  def adicionar_experimento(experimento)
    if experimento && !@experimentos.include?(experimento)
      @experimentos << experimento
    end
  end

  def mostrar_dados
    puts "---- Dados do Projeto ----"
    puts "Título: #{nome}"
    puts "Descrição: #{descricao}"
    puts "Início: #{dt_inicio}"
    puts "Fim: #{dt_fim}"
    puts "Status: #{status}"

    puts "Pesquisadores envolvidos:"
    if pesquisadores.empty?
      puts " Nenhum pesquisador envolvido."
    else
      pesquisadores.each do |p|
        puts " - #{p.nome}"
      end
    end

    puts "Experimentos relacionados:"
    if experimentos.empty?
      puts " Nenhum experimento associado."
    else
      experimentos.each do |e|
        puts " - Código: #{e.codigo}, Título: #{e.titulo}, Data: #{e.dt_realizacao}"
      end
    end
    puts "==================="
  end

  def mostrar_resumo
    puts "---- Resumo do Projeto ----"
    puts "Título: #{nome}"
    puts "Descrição: #{descricao}"
    puts "Status: #{status}"
    puts "Data de Início: #{dt_inicio}"
    puts "Data de Finalização: #{dt_fim}" if dt_fim
  end
end