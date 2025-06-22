class Sala
  include Mostrar

  attr_accessor :numero, :tipo, :estado, :equipamentos

  def initialize
    @equipamentos = []
  end

  def mostrar_dados
    puts "---- Dados da Sala ----"
    puts "Número: #{@numero}"
    puts "Tipo: #{@tipo}"
    puts "Estado: #{@estado}"
    puts "--- Equipamentos na Sala:"

    if @equipamentos.empty?
      puts " Nenhum equipamento no local."
    else
      @equipamentos.each do |e|
        puts "Modelo: #{e.modelo}, Estado: #{e.estado}"
      end
    end

    puts "==================="
  end

  def mostrar_resumo
    puts "--- Resumo da Sala ---"
    puts "Número: #{@numero}"
    puts "Tipo: #{@tipo}"
    puts "Estado: #{@estado}"
  end
end

end