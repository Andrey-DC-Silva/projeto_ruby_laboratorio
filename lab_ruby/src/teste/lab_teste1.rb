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
  "Livre",
  nil
)
sala2 = Sala.new(
  "A201", 
  "Sala de Pesquisas", 
  "Livre",
  nil
)
sala3 = Sala.new(
  "B102", 
  "Laboratório de Química", 
  "Livre",
  nil
)

eq1 = Equipamento.new(
  "Microscópio Biológico", 
  "Precisão para análises celulares", 
  "Operacional", 
  sala1
)
eq2 = Equipamento.new(
  "Centrífuga", 
  "Separação de substâncias", 
  "Operacional", 
  sala3
)
eq3 = Equipamento.new(
  "Balança de Precisão", 
  "Medição exata de massas",
  "Manutenção", 
  sala2
)

tecnico1 = Tecnico.new(
  "1134", 
  "Carlos Silva", 
  "123.456.789-01", 
  Date.strptime("10/03/1985", formato), 
  "Manutenção de Equipamentos",
  nil
)
tecnico2 = Tecnico.new(
  "1177", 
  "Joana Nunes", 
  "987.654.321-00", 
  Date.strptime("15/08/1980", formato), 
  "Gerenciamento de Laboratório",
  nil
)

tecnico1.adicionar_equipamento(eq1)
tecnico2.adicionar_equipamento(eq2)
tecnico2.adicionar_equipamento(eq3)

pesquisador1 = Pesquisador.new(
  "1392", 
  "Ana de Lima", 
  "012.221.123-20", 
  Date.strptime("20/10/2000", formato), 
  "Virologia",
  nil
)
pesquisador2 = Pesquisador.new(
  "1424", 
  "Roberto Fonseca", 
  "123.451.921-12", 
  Date.strptime("10/02/1990", formato), 
  "Biologia",
  nil
)
pesquisador3 = Pesquisador.new(
  "1567", 
  "Luiza Torres", 
  "321.654.987-00", 
  Date.strptime("25/11/1992", formato), 
  "Química Orgânica",
  nil
)

pesquisador1.adicionar_afiliacao("INS")
pesquisador2.adicionar_afiliacao("UFRGS")
pesquisador3.adicionar_afiliacao("USP")

projeto1 = Projeto.new(
  "Estudo sobre Impacto Ambiental de Microplásticos",
  "Objetivo: investigar a presença e efeitos dos microplásticos em ecossistemas aquáticos",
  Date.strptime("10/06/2021", formato),
  nil,
  "Em Andamento",
  nil,
  nil
)

projeto2 = Projeto.new(
  "Desenvolvimento de Compostos Químicos Antivirais",
  "Estudo de novos compostos para bloqueio de replicação viral",
  Date.strptime("01/02/2022", formato),
  Date.strptime("15/12/2024", formato),
  "Finalizado",
  nil,
  nil
)

exp1 = Experimento.new(
  "001",
  "Resistência Viral",
  "Análise da resistência em presença de medicamentos",
  Date.strptime("08/08/2021", formato),
  sala1,
  nil,
  pesquisador2
)
exp2 = Experimento.new(
  "002", 
  "Análise de Dados",
  "Documentação e análise de dados anteriores", 
  Date.strptime("01/09/2021", formato), 
  sala2, 
  nil,
  pesquisador1
)
exp3 = Experimento.new(
  "003",
  "Síntese de Compostos",
  "Criação de compostos com potencial antiviral",
  Date.strptime("20/03/2023", formato),
  sala3,
  nil,
  pesquisador3
)
exp4 = Experimento.new(
  "004",
  "Testes com Células",
  "Avaliação de toxicidade dos compostos",
  Date.strptime("10/05/2024", formato),
  sala3,
  nil,
  pesquisador3
)

sala1.adicionar_equipamento(eq1)
sala2.adicionar_equipamento(eq3)
sala3.adicionar_equipamento(eq2)

exp1.adicionar_equipamento(eq1)
exp3.adicionar_equipamento(eq2)
exp4.adicionar_equipamento(eq2)
exp4.adicionar_equipamento(eq3)

projeto1.adicionar_pesquisador(pesquisador1)
projeto1.adicionar_pesquisador(pesquisador2)
projeto1.adicionar_experimento(exp1)
projeto1.adicionar_experimento(exp2)

projeto2.adicionar_pesquisador(pesquisador3)
projeto2.adicionar_experimento(exp3)
projeto2.adicionar_experimento(exp4)


[sala1, sala2, sala3].each do |s|
 s.mostrar_resumo
 s.mostrar_dados
end
  
[exp1, exp2, exp3, exp4].each do |x|
 x.mostrar_resumo
 x.mostrar_dados
end

[eq1, eq2, eq3].each do |e|
 e.mostrar_resumo
 e.mostrar_dados
end

[tecnico1, tecnico2].each do |t|
 t.mostrar_resumo
 t.mostrar_dados
end

[pesquisador1, pesquisador2, pesquisador3].each do |p|
 p.mostrar_resumo
 p.mostrar_dados
end

[projeto1, projeto2].each do |pr|
 pr.mostrar_resumo
 pr.mostrar_dados
end

#ruby lab_teste1.rb