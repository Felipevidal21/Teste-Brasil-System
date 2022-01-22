class Teste01 
 def initialize(nome) #metodo contrutor que ira executar assim que programa inicializar,passando como parametro avariavel "nome"
    @Nome = nome      #uma nova variavel tambem chamada "Nome" ira recebera a variavel "nome" passada como parametro
end

#metodo que ira mostra o nome e o seu tamnho
  def mostra           
    puts "Seu Nome é : #{@Nome}"                 # mostra a saida dados ,com o nome armazenado
    puts "comprimento do Nome é : #{@Nome.size}" # mostra a saida dados ,com o tamanho variavel

  end
 
end


print "digite um nome : "                      # Saida de dados que pede para digitar o nome,sem quebrar a linha
nome = gets.chomp                              # recebe os dados digitados pelo teclado e armazena na variavel "nome"

tst01 = Teste01.new(nome) # instanciando e criando um objeto para representa a classe  Tarefa01                           
tst01.mostra              # objeto chama metodo mostra