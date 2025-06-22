class Experimento
  include Mostrar
  attr_reader :codigo
  attr_accessor :titulo, :descricao, :dt_realizacao, :sala, :equipamentos, :responsavel

  def initialize(titulo, descricao, dt_realizacao, equipamentos, sala)
    @titulo = titulo
    @descricao = descricao
    @dt_realizacao = dt_realizacao
    @sala = sala
    @equipamentos = []
    @responsavel = responsavel
  end

  def mostrar_dados
    puts "---- Dados do Experimento ----"
    puts "Código: #{codigo}"
    puts "Título: #{titulo}"
    puts "Descrição: #{descricao}"
    puts "Data de Realização: #{dt_realizacao}"
    puts "Sala: #{sala}"
    puts "Responsável: #{responsavel}"
    puts "- Equipamentos Utilizados:"
     if @equipamentos_usados.nil? || @equipamentos_usados.empty?# nil == null
      puts "  Nenhum equipamento registrado."
    end
    else
      @equipamentos.each do |e|
        puts " - #{e.modelo}(#{e.estado})"
    end
  end

  def mostrar_resumo
    
  end

end