print "Digite o Numero da contagem Regressiva : " # Saida de dados que pede para digitar o numero, sem quebrar a linha
cont_regre = gets.chomp.to_i # "cont_regre" ira armazenar o valor do tipo inteiro 

# Enquanto o Numero Digitado não for menor ou igual a 0 ira subtrair 1
while cont_regre >= 0
    puts cont_regre
# Quando o valor for igual a 0 ira Mostra a mensagem "KABUM"
    if cont_regre == 0
    puts "KABUM"
    end   
    
    cont_regre -= 1
end