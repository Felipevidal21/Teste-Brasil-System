class Tarefa03

   def initialize(nome)  # metodo construtor que ira executar assim que programa inicializar,passando como paràmetro a variável "nome"
        @Nome = nome     # uma nova variável tambem chamada "Nome" ira recebera a variável "nome" passada como parâmetro
        @cont = 0        # contador
        @valor_metade = 0
      end

                  
def metade_valor
   @valor_metade = @Nome.size / 2  # variável "valor_metade" Ira receber o tamanho do nome digitado ,dividido por 2

   # caso o tamanho do nome digitado seja primo ,o valor da divisão iria retorna um valor do tipo float 
   # como os valores da divisão são tipo inteiro ele ira retorna um valor inteiro ,com tudo para baixo 
   # para arredondar a metade do nome com o valor fechado mais para cima tem que somar com 1
   # se o numero For primo ,ou seja,retante da divisão For 1 irá somar com 1
   # como no exemplo : Tiago => Tia
 
    if @Nome.size % 2 == 1
       @valor_metade += 1
    end

end 

   
                      #metodo que irá mostra a metade do nome 
   def mostra   
# enquanto o contador estiver menor que a metade do array ,
# contador ira somar 1 e ira mostra os valores do array de acordo com o valor do contador 
 print "a metade do nome é : " 
      while @cont < @valor_metade do 
       print @Nome[@cont]
       @cont += 1
      end

   end

end




print "digite um nome : "   # Saida de dados que pede para digitar o nome, sem quebrar a linha
nome = gets.chomp.split('') # recebe os dados digitados pelo usuário,contudo a função "split" ira separa os dados um por um e guarda na variavel,transformando-a em um Array

tst03 = Tarefa03.new(nome) #instanciando e criando um objeto para representa a classe  Tarefa03

tst03.metade_valor #objeto chama primeiro o metodo "metade_valor" 
tst03.mostra       #objeto chama metodo mostra 

