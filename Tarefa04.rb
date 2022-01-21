print "Digite Sua Data de Nascimento :" #Saida de dados que pede para digitar a data

data_nasc = gets.chomp.split('/') #recebe os dados digitados pelo teclado e armazena na variavel data_nasc,contudo,separando o valor na "/"(Barra) transformando a variavel em um array

cont = 0 # contador
valor = Array.new # um Array criado para receber os valores da data por partes
soma = 0 #variavel que ira somar os valores

#função que ira pegar os valores por partes e guarda na variavel "valor"
while cont < data_nasc.size do #enquanto o contador for menor que o tamanho do array de entrada ou seja o valor  que foi salvo as datas ele ira...
  valor.push(data_nasc[cont].split('')) #adiciona a o novo array o valor do indice(representado pelo contador) de forma separada ,sempre na ultima colocação
  cont += 1 #contador soma mais 1
end

for value in valor  do  #pegando valores do novo array de forma que todos estão separados e armazenando na variavel "value"
 #contudo,vale explicar que "value" esta como um array bidimencional
 value.each do |l| # vai passar os valores de cada array que esta contido nesse novo array(bidimencional) para a variavel "l"(que esta como parametro) 
  #vale ressaltar que os valores estão como String então usei a função  'to_i' para converter os valores para inteiro
    soma = soma + l.to_i # soma vai receber o seu valor mais o valor de cada numero que esta passando por partes na variavel "l"
   print " #{l} + " #mostra os valores que estâo sendo passados
   end
 end

 print " = #{soma}" #mostra o valor da soma
