require 'date' # equivalente ao LocalDate

class Pessoa
  attr_reader :id
  attr_accessor :nome, :cpf, :dt_nasc

  def initialize(id, nome, cpf, dt_nasc)
    @id = id
    @nome = nome
    self.cpf = cpf # Utiliza do "def cpf=(cpf)" para validar
    @dt_nasc = dt_nasc.is_a?(String) ? Date.strptime(dt_nasc, '%d/%m/%Y') : dt_nasc
  end

  def cpf=(cpf)
    if cpf
      cpf_limpo = cpf.gsub('.', '').gsub('-', '').strip
      if cpf_limpo.length == 11
        @cpf = cpf_limpo
      else
        puts 'CPF inválido'
      end
    else
      puts 'CPF inválido'
    end
  end

  def dt_nasc=(dt_nasc)
    @dt_nasc = dt_nasc.is_a?(String) ? Date.strptime(dt_nasc, '%d/%m/%Y') : dt_nasc
  end

  def to_s # = toString
    nome
  end

end