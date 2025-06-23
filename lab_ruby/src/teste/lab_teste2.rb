require 'date'

formato = '%d/%m/%Y'

sala1 = Sala.new(
  "A101", 
  "Laboratório de Biologia", 
  "Livre"
)
sala2 = Sala.new(
  "A201",
  "Sala de Pesquisas",
  "Livre"
)
sala3 = Sala.new(
  "B102",
  "Laboratório de Química",
  "Livre"
)

eq1 = Equipamento.new(
  "Microscópio Biológico",
  "Precisão para análises celulares", 
  "Operacional", 
  sala1
)
eq2 = Equipamento.new(
  "Centrífuga", 
  "Separação de amostras biológicas", 
  "Operacional", 
  sala3
)
eq3 = Equipamento.new(
  "Espectrofotômetro", 
  "Análise de absorção de luz", 
  "Manutenção", 
  sala3
)

tecnico1 = Tecnico.new(
  "1134", 
  "Carlos Silva", 
  "123.456.789-01", 
  Date.new(1985, 3, 10), 
  "Manutenção de Equipamentos"
)
tecnico1.adicionar_equipamento(eq1)

tecnico2 = Tecnico.new(
  "1189", 
  "Juliana Matos", 
  "987.654.321-00", 
  Date.new(1992, 6, 25), 
  "Manutenção de Laboratório"
)
tecnico2.adicionar_equipamento(eq2)
tecnico2.adicionar_equipamento(eq3)

pesquisador1 = Pesquisador.new(
  "1392", 
  "Ana de Lima", 
  "012.221.123-20", 
  Date.strptime("20/10/2000", formato), 
  "Virologia"
)

pesquisador1.adicionar_afiliacao("INS")

pesquisador2 = Pesquisador.new(
  "1424", 
  "Roberto Fonseca", 
  "123.451.921-12", 
  Date.strptime("10/02/1990", formato), 
  "Biologia"
)
pesquisador2.adicionar_afiliacao("UFRGS")

pesquisador3 = Pesquisador.new(
  "1501", 
  "Fernanda Souza", 
  "321.654.987-77", 
  Date.strptime("15/03/1988", formato), 
  "Química Orgânica"
)
pesquisador3.adicionar_afiliacao("USP")

projeto1 = Projeto.new(
  "Desenvolvimento de Vacina de RNA para Doenças Tropicais",
  "O projeto visa explorar a aplicação de vacinas baseadas em RNA mensageiro no combate a doenças tropicais negligenciadas como dengue, chikungunya e zika.",
  Date.strptime("10/06/2021", formato),
  Date.strptime("12/01/2023", formato),
  "Finalizado"
)

projeto2 = Projeto.new(
  "Estudo de Compostos Químicos Naturais",
  "Investigar compostos extraídos de plantas com potencial farmacológico",
  Date.strptime("01/03/2022", formato),
  Date.strptime("01/10/2024", formato),
  "Em Andamento"
)

exp1 = Experimento.new(
  "001", 
  "Verificação da Resistência Viral", 
  "Análise da capacidade de sobrevivência do vírus com antivirais.", 
    Date.strptime("08/08/2021", formato), 
    sala1, 
    pesquisador2
  )
exp2 = Experimento.new(
  "002", 
  "Análise dos Dados do Experimento 1", 
    "Organização e documentação dos dados adquiridos.", 
    Date.strptime("01/09/2021", formato), 
    sala2, 
    pesquisador1
  )
exp3 = Experimento.new(
  "003", 
  "Extração de Compostos Naturais", 
  "Extração de substâncias bioativas de plantas nativas.", 
  Date.strptime("05/04/2023", formato), 
  sala3, 
  pesquisador3
)
exp4 = Experimento.new(
  "004", 
  "Análise Espectrofotométrica de Compostos", 
  "Determinação da pureza de extratos por espectrofotometria.", 
  Date.strptime("10/05/2023", formato), 
  sala3, 
  pesquisador3
)

sala1.adicionar_equipamento(eq1)
sala3.adicionar_equipamento(eq2)
sala3.adicionar_equipamento(eq3)

exp1.adicionar_equipamento(eq1)
exp3.adicionar_equipamento(eq2)
exp4.adicionar_equipamento(eq3)

projeto1.adicionar_pesquisador(pesquisador1)
projeto1.adicionar_pesquisador(pesquisador2)
projeto1.adicionar_experimento(exp1)
projeto1.adicionar_experimento(exp2)

projeto2.adicionar_pesquisador(pesquisador3)
projeto2.adicionar_experimento(exp3)
projeto2.adicionar_experimento(exp4)

#ruby lab_teste2.rb