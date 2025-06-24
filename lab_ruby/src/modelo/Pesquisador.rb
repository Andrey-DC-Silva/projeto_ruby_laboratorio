require_relative '../modelo/Mostrar'
require_relative '../modelo/Pessoa'

class Pesquisador < Pessoa
  attr_accessor :area_atuacao, :afiliacoes

  def initialize(nome, id, cpf, dt_nasc, area_atuacao, afiliacoes)
    super(nome, id, cpf, dt_nasc)
    @area_atuacao = area_atuacao
    @afiliacoes = []
  end

  def adicionar_afiliacao(afiliacao)
    if afiliacao
      @afiliacoes << afiliacao
    end
  end

  def mostrar_dados
    puts ""
    puts "==============================="
    puts "---- Dados do Pesquisador ----"
    puts "ID: #{id}"
    puts "Nome: #{nome}"
    puts "CPF: #{cpf}"
    puts "Data de Nascimento: #{dt_nasc.strftime('%d/%m/%Y')}"
    puts "Área de Atuação: #{area_atuacao}"

    puts "Afiliações:"
    if afiliacoes.empty?
      puts "Nenhuma afiliação registrada."
    else
      afiliacoes.each do |a|
        puts "* #{@afiliacao}"
      end
    end
    puts "==============================="
  end

  def mostrar_resumo
    puts ""
    puts "==============================="
    puts "--- Resumo do Pesquisador ---"
    puts "ID: #{id}"
    puts "Nome: #{nome}"
    puts "Área de Atuação: #{area_atuacao}"
    puts "==============================="
  end

end