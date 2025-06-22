class Afiliacao
  attr_accessor :instituicao_nome, :funcao, :dt_inicio
  # "attr.accessor" da a permissão de ambos get e set
  attr_reader :pesquisador
  # "attr.reader" define a permissão de leitura(apenas) - equivale ao get
  # outra derivação é o attr.writer, para escrita - equivale ao set
  
  def initialize(pesquisador, instituicao_nome, funcao, dt_inicio) # "initialize" representa um construtor
    @pesquisador = pesquisador
    @instituicao_nome = instituicao_nome
    @funcao = funcao
    @dt_inicio = dt_inicio
    # "@" indica a propriedade de variável de instância
  end

  def get_id_pesquisador # def define um método. - id_pesquisador == pesquisador
    @pesquisador.id
  end

  def vincular_pesquisador(pesquisador)
    @pesquisador = pesquisador
  end

end