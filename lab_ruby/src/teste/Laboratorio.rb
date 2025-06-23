require 'date'

require_relative '../modelo/Mostrar'
require_relative '../modelo/Pessoa'
require_relative '../modelo/Tecnico'
require_relative '../modelo/Pesquisador'
require_relative '../modelo/Equipamento'
require_relative '../modelo/Sala'
require_relative '../modelo/Experimento'
require_relative '../modelo/Projeto'

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

eq1 = Equipamento.new(
  "Microscópio Biológico",
  "Precisão para análises celulares",
  "Operacional",
  sala1
)

tecnico1 = Tecnico.new(
  "1134",
  "Carlos Silva",
  "123.456.789-01",
  Date.strptime("10/03/1985", formato),
  "Manutenção de Equipamentos"
)
tecnico1.adicionar_equipamento(eq1)

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

projeto1 = Projeto.new(
  "Análise de Tratamento de Combate ao Vírus X",
  "O objetivo da pesquisa é de compreender e documentar a efetividade do tratamento padrão utilizado no combate ao Vírus X",
  Date.strptime("10/06/2021", formato),
  Date.strptime("12/01/2023", formato),
  "Finalizado"
)

exp1 = Experimento.new(
  "001",
  "Verificação da Resistência Viral",
  "Utilização do microscópio para análise da capacidade de sobreviver e se multiplicar mesmo na presença de medicamentos antivirais que normalmente o controlariam.",
  Date.strptime("08/08/2021", formato),
  sala1,
  pesquisador2
)

exp2 = Experimento.new(
  "002",
  "Análise dos Dados do Experimento 1",
  "Organização, análise e documentação dos dados adquiridos",
  Date.strptime("01/09/2021", formato),
  sala2,
  pesquisador1
)

sala1.adicionar_equipamento(eq1)

exp1.adicionar_equipamento(eq1)

projeto1.adicionar_pesquisador(pesquisador1)
projeto1.adicionar_pesquisador(pesquisador2)

projeto1.adicionar_experimento(exp1)
projeto1.adicionar_experimento(exp2)

 sala1.mostrar_dados
 sala1.mostrar_resumo
 eq1.mostrar_dados
 eq1.mostrar_resumo
 tecnico1.mostrar_dados
 tecnico1.mostrar_resumo
 pesquisador1.mostrar_dados
 pesquisador1.mostrar_resumo
 exp1.mostrar_dados
 exp1.mostrar_resumo
 projeto1.mostrar_dados
 projeto1.mostrar_resumo

 #ruby Laboratorio.rb