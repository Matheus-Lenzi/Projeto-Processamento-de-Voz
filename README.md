### Tarefa: Projeto Processamento de Voz

## Este projeto individual visa estudar algoritmos de processamento de sinais e aplicá-los em filtragem e reconhecimento de voz.

## Ferramentas sugeridas: Programa Scilab (www.scilab.org) e Audacity (https://www.audacityteam.org/download/)

## Procedimentos:

- [X] 1) Capture 5 segundos ou mais  de sua própria voz via Audacity . Caso não tenha microfone no computador, tente capturar com o do celular e algum  aplicativo. Outra alternativa é baixar algum arquivo de voz disponível na internet ou consulte o professor. Não é necessário enviar os arquivos de áudio.

- [X] 2) Se necessário, converta o arquivo de voz para o formato wav usando o Audacity.

- [X] 3) Carregue o arquivo de voz no Scilab usando a função wavread(). Para entender a função digite “help wavread”, na linha de comando do Scilab.

- [X] 4) Implemente os seguintes processamentos:

- [X] 4.1) Filtragem com esquecimento usando α=0,98;0,5;−0,98;−0,5. Antes de salvar normalize as amostras para a faixa de [-1,1] (divida cada amostra pela constante normalix = max ( abs(min(x), abs(max(x)) ), onde x é o sinal de um canal). Salve cada resultado do processamento em arquivos no formato wav usando o wavwrite. (Help wavwrite) do Scilab. Usando o Audacity, ouça os resultados e comente no relatório. Com o Audacity observe os gráficos de espectros dos sinais e os inclua no relatório. Inclua o programa fonte no relatório. Teste com outros valores de α e comente os resultados no relatório (formato PDF).

# Entregas: a) gráficos de espectros para α=0,98;0,5;−0,98;−0,5; b) comente os resultados com os valores de α; c) Inclua o programa fonte no relatório.

- [X] 4.2) Filtragem de média móvel usando M = 50, 100, 1000. Antes de salvar normalize as amostras para a faixa de [-1,1]. Salve cada resultado do processamento em arquivos no formato wav usando o wavwrite. (Help wavwrite) do Scilab. Usando o Audacity, ouça os resultados e comente o que observou no relatório.  Com o Audacity observe os gráficos de espectros dos sinais e os inclua no relatório. Inclua o programa fonte no relatório. Teste com outros valores de M e comente os resultados no relatório.

# Entregas: a) comente os resultados com M = 50, 100, 1000; b) gráficos de espectros dos sinais com M = 50, 100, 1000; c) Inclua o programa fonte no relatório (formato PDF).

- [X] 4.3) Correlação de sinais.  Segmente um trecho do sinal (aproximadamente 1 segundos) do meio do sinal, entre  2 e 3 segundos do sinal de voz. Calcule a função correlação entre o segmento com o sinal de voz e apresente o gráfico da correlação no relatório. Interprete os resultados  no relatório  Inclua o programa fonte no relatório.

# Entregas: a) Calcule a função correlação entre o segmento com o sinal de voz e apresente o gráfico da correlação no relatório; b) Inclua o programa fonte no relatório (formato PDF).

- [X] 4.4) Alteração de taxa. a)  Dobre a taxa por fator 2 do sinal incluindo uma amostra com valor zero entre duas amostras do sinal original (um canal). Usando o Audacity, ouça os resultados e comente o que observou no relatório.  Com o Audacity observe os gráficos de espectros dos sinais e os inclua no relatório. Inclua o programa fonte no relatório. b) reduza a taxa por fator 2 do sinal eliminado as amostras com índice "n" ímpar do sinal original (um canal). Usando o Audacity, ouça os resultados e comente o que observou no relatório.  Com o Audacity observe os gráficos de espectros dos sinais e os inclua no relatório. Inclua o programa fonte no relatório.

# Entregas: a) comentários no relatório, programa e os gráficos de espectros resultantes;  b) comentários no relatório, programa e os gráficos de espectros resultantes.