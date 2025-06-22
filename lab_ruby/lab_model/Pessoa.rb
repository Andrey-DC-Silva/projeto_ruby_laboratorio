require 'date'
class Pessoa
  private_class_method :new # impede a intanciação da classe
  attr_reader :id
  attr_accessor :nome, :cpf, :dt_nasc

  def initialize(id, nome, cpf, dt_nasc)
    @id = id
    @nome = nome
    @cpf = cpf
    @dt_nasc = dt_nasc
  end

  def cpf=(cpf)
    cpf = cpf.gsub('.', '').gsub('-', "").strip
    if cpf && cpf.length == 11
      @cpf = cpf
    else
      puts "CPF Inválido"
    end
  end

  def dt_nasc=(dt_nasc)
    @dt_nasc = dt_nasc
  end

end