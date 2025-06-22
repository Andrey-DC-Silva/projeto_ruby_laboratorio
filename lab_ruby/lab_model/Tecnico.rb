class Tecnico < Pessoa
  include Mostrar
  attr_accessor :especializacao, :equipamentos

  def initialize(especializacao, id, nome, cpf, dt_nasc)
    super(id, nome, cpf, dt_nasc)
    @especializacao = especializacao
    @equipamentos = []
  end

  def mostrar_dados
    puts "---- Dados do Tecnico ----"
    puts "ID: #{id}"
    puts "Nome: #{nome}"
    puts "CPF: #{cpf}"
    puts "Data de Nascimento: #{dt_nasc}"
    puts "Especialização: #{especializacao}"

    puts "Equipamentos Operados:"
    if equipamentos.empty?
      puts "Nenhum equipamento registrado."
    else
      equipamentos.each do |equipamento|
        puts "Instituição: #{equipamento.modelo}"
        puts "Início: #{equipamento.sala}"
        puts "Tipo: #{equipamento.estado}"
      end
    end
    puts "==================="
  end

  def mostrar_resumo
    puts "--- Resumo do Tecnico ---"
    puts "ID: #{id}"
    puts "Nome: #{nome}"
    puts "CPF: #{cpf}"
    puts "Especialização: #{especializacao}"
  end
end