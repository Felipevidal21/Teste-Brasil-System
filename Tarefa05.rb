#HASH contendo como chave o Numero de DDD que refere a cada cidade
codigos_DDD = {61 => 'Brasília' , 
               71 => 'Salvador' , 
               11 => 'Sao Paulo',  
               21 => 'Rio de Janeiro' , 
               32 => 'Juiz de Fora',  
               19 => 'Campinas' }

print "Digite o numero de DDD :" #Saida de dados que pede para digitar o numero de DDD

numero_DDD = gets.chomp.to_i     #recebe os dados digitados pelo teclado e armazena na variavel ,mas , armazena apenas valores tipo inteiro
cont = 0                         #contador que vai identificar se existe algum valor ,no caso,alguma DDD encontrado
cidade = Hash.new               #Hash que vai armazenar a DDD e a cidade encontrada

codigos_DDD.each do |chave,valor| #vai percorrer o Hash , e armazena DDD e cidades nos valores passados como parametros  
#se algum DDD for encontrado o contador ira somar  + 1 ,e guarda a no Hash "cidade" 
    if numero_DDD == chave        
        cont += 1   
        cidade = {"#{chave}":valor}
 end
end

#se contador = 1 ,o DDD e cidade estão armazenados no Hash "cidade" que sera percorrido e mostrado
#caso contador = 0 , nenhum DDD foi encontrado e mostrara a mensagem de DDD nao cadastrado
 if cont == 1
        cidade.each do |chave,valor| 
            puts " DDD : #{chave} \n Cidade : #{valor}"
        end
    else
        puts "DDD nao cadastrado"
        
    end
