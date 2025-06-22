class Pesquisador < Pessoa
  include Mostrar
  attr_reader :id 
  attr_accessor :area_atuacao, :cnpq, :afiliacoes

  def initizalize(nome, id, cpf, dt_nasc, area_atuacao, cnpq, afiliacoes)
    super(nome, id, cpf,, dt_nasc)
    @area_atuacao = area_atuacao
    @cnpq = cnpq
    @afiliacoes = []
  end

  def adicionar_afiliacao
    afiliacao.vincular_pesquisador(self)
    @afiliacoes << afiliacao
  end

  def mostrar_dados
    puts "---- Dados do Pesquisador ----"
    puts "ID: #{id}"
    puts "Nome: #{nome}"
    puts "CPF: #{cpf}"
    puts "CNPQ: #{cnpq}"
    puts "Data de Nascimento: #{dt_nasc}"
    puts "Área de Atuação: #{area_atuacao}"

    puts "Afiliações:"
    if afiliacoes.empty?
      puts "Nenhuma afiliação registrada."
    else
      afiliacoes.each do |a|
        puts "Instituição: #{a.instituicao_nome}"
        puts "Início: #{a.dt_inicio}"
        puts "Tipo: #{a.funcao}"
      end
    end
    puts "==================="
  end

  def mostrar_resumo
    puts "--- Resumo do Pesquisador ---"
    puts "ID: #{id}"
    puts "Nome: #{nome}"
    puts "CPF: #{cpf}"
    puts "CNPQ: #{cnpq}"
    puts "Área de Atuação: #{area_atuacao}"
  end

end