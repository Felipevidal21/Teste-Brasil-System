class Teste02 
 def initialize(nome)    # metodo construtor que irá executar assim que programa inicializar,passando como parametro a variável "nome"
       @Nome = nome      # uma nova variável tambem chamada "Nome" irá recebera a variável "nome" passada como parametro
  end

    #metodo que ira mostra o nome invertido
 def mostra           
    puts "Seu Nome na ordem inversa é : #{@Nome.reverse}" # função "reverse" vai inverter a o "nome"
  end


    #outra forma de mostra valor inverso
  def outra_forma
    x = @Nome.split('') # Array "x" irá guarda o nome digitado de forma separa ,letra por letra ,devido a função split 
    cont = x.size - 1   #variável "cont" vai armazenar o tamanho do array menos 1 ,pois, um vetor começa de 0 e isso passaria do limite do vetor
    
    #enquanto o "cont" não chegar a 0 ...
    #irá mostra o valor da posição do array "x" indicado pelo "cont"
    #e "cont" subtrai 1 
       while 0 <= cont
        print x[cont]
        cont = cont - 1
       end
  end
end

print "digite um nome : " # Saida de dados que pede para digitar o nome, sem quebrar a linha
nome = gets.chomp         # recebe os dados digitados pelo teclado e armazena na variável "nome"

tst02 = Teste02.new(nome)  # instanciando e criando um objeto para representa a classe  Tarefa02
tst02.mostra               # objeto chama metodo "mostra"
#tst02.outra_forma         # objeto chama o metodo "outra_forma"