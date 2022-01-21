print "digite um nome : "   # Saida de dados que pede para digitar o nome, sem quebrar a linha
nome = gets.chomp.split('') # recebe os dados digitados pelo teclado,contudo a função "split" ira separa os dados um po um e guarda na variavel,transformando ela em um Array

cont = 0 # contador 

valor_metade = nome.size / 2  # variavel "valor_metade" Ira receber o tamanho do nome digitado ,dividido por 2

# caso o tamanho do nome digitado seja primo ,o valor da divisão iria retorna um valor do tipo float 
# como os valores da divisão são tipo inteiro ele ira retorna um valor inteiro ,com tudo para baixo 
# para arredondar a metade do nome com o valor fechado para cima tem que somar com 1
# se o numero for primo ,ou seja,retante da divisão for 1 ira somar com 1
# como no exemplo : Tiago => Tia
if nome.size % 2 == 1
    valor_metade = valor_metade + 1
end

# enquanto o contador for menor que a metade do array ,contador ira somar 1 e ira mostra os valores do array de acordo com o valor do contador 
print "a metade do nome é : " 
while cont < valor_metade do 
    print nome[cont]
    cont += 1
  end
