class Teste01 
 def initialize(nome) #metodo construtor que irá executar assim que programa inicializar,passando como parâmetro a variavel "nome"
    @Nome = nome      #uma nova variável tambem chamada "Nome" ira recebera a variável "nome" passada como parâmetro
end

#metodo que irá mostra o nome e o seu tamnho
  def mostra           
    puts "Seu Nome é : #{@Nome}"                 # mostra a saida dados ,com o nome armazenado
    puts "comprimento do Nome é : #{@Nome.size}" # mostra a saida dados ,com o tamanho da variável

  end
 
end


print "digite um nome : "                      # Saida de dados que pede para digitar o nome,sem quebrar a linha
nome = gets.chomp                              # recebe os dados digitados pelo usuário e armazena na variável "nome"

tst01 = Teste01.new(nome) # instanciando e criando um objeto para representa a classe  Tarefa01                           
tst01.mostra              # objeto chama metodo mostra