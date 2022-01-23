class Tarefa05
    def initialize(numero_DDD)

     @Numero_DDD = numero_DDD         # uma nova variável tambem chamada "Numero_DDD" ira recebera a variável "numero_DDD" passada como parâmetro

     @codigos_DDD = {61 => 'Brasília' , 
                    71 => 'Salvador' , 
                    11 => 'Sao Paulo',  
                    21 => 'Rio de Janeiro', 
                    32 => 'Juiz de Fora',  
                    19 => 'Campinas' }       # HASH contendo como chave o Numero de DDD que refere a cada cidade
     
     @cont = 0                         # contador que vai identificar se existe algum valor ,no caso,alguma DDD encontrado
     @cidade = Hash.new                # Hash que vai armazenar a DDD e a cidade encontrada
     
    end

    def guarda_valor
        @codigos_DDD.each do |chave,valor| # vai percorrer o Hash , e armazena DDD e cidades nos valores passados como parâmetros  
                                           # se algum DDD For encontrado o contador ira somar  + 1 ,e guarda a no Hash "cidade" 
                if  @Numero_DDD == chave        
                    @cont += 1   
                    @cidade = {"#{chave}":valor}
                end
        end        
    end
    
    def mostra
#se contador = 1 ,o DDD e cidade estão armazenados no Hash "cidade" que sera percorrido e mostrado
#caso contador = 0 , nenhum DDD foi encontrado e mostrara a mensagem de DDD nao cadastrado

      if @cont == 1
         @cidade.each do |chave,valor| 
         puts " DDD : #{chave} \n Cidade : #{valor}"
      end
      else
         puts "DDD nao cadastrado"
      end
    end  
end



print "Digite o numero de DDD :" # Saida de dados que pede para digitar o numero de DDD
numero_DDD = gets.chomp.to_i     # recebe os dados digitados pelo teclado e armazena na variável ,mas , armazena apenas valores tipo inteiro

tst05 = Tarefa05.new(numero_DDD) #instanciando e criando um objeto para representa a classe Tarefa05
tst05.guarda_valor               #objeto chama primeiro o metodo "guarda_valor"
tst05.mostra                     #objeto chama metodo mostra