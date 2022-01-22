class Tarefa06
   def initialize(cont_regre)
   @Cont_regre = cont_regre   # uma nova variavel tambem chamada "Cont_regre" ira recebera a variavel "cont_regre" passada como parametro
   end 
   def mostra
           # Enquanto o Numero Digitado não For menor ou igual a 0 ira subtrair 1
           while @Cont_regre >= 0
             puts @Cont_regre
           # Quando o valor For igual a 0 ira Mostra a mensagem "KABUM"
            if @Cont_regre == 0
              puts "KABUM"
            end   
    
          @Cont_regre -= 1
         end
   end  
end

print "Digite o Numero da contagem Regressiva : " # Saida de dados que pede para digitar o numero, sem quebrar a linha
cont_regre = gets.chomp.to_i                      # "cont_regre" ira armazenar o valor do tipo inteiro 

tst06 = Tarefa06.new(cont_regre)     #instanciando e criando um objeto para representa a classe Tarefa06
tst06.mostra                         #objeto chama metodo mostra