// Matheus Lenzi dos Santos - 19100420

// Indicando o caminho onde está salvo o áudio original no formato .wav
wave = "C:\Users\Matheus\Desktop\Projeto Processamento de Voz\audio.wav";
wavread(wave,"Size")
wavread(wave,"Info")
// X -> Amplitude do som entre [-1, 1], com uma linha por canal de gravação
// Fs -> Frequência de amostragem em Hz
// bits -> Número de bits em X
[X,Fs,bits] = wavread(wave)

// Recuperando o tamanho do áudio original no formato .wav
wave_size = size(X)(2)

// Recuperando apenas um canal de gravação (Mono) áudio original
x = X(1,:);

// Definindo os valores iniciais dos vetores indexados
y = zeros(wave_size,1);
y(1) = 0;

// Definindo o valor de alpha do filtro de esquecimento
m = 10000

// Implementado o filtro de média móvel (y(n) = y(n-1) + ((x(n) - x(n-mm))/mm))
for n = 2:wave_size
    if n > wave_size
        y(n) = y(n-1) + ((x(n) - x(n-m))/m)
     else
         y(n) = y(n-1) + (x(n)/m)
     end
end

// Normalizando os valores de y
y_norm = y/(max(abs(y)))

// Plotando os valores de y normalizados
plot(y_norm)

// Escrevendo os valores de y no formato .wav
wavwrite(y_norm, Fs, bits, "C:\Users\Matheus\Desktop\Projeto Processamento de Voz\audio_filtro_media_movel_10000.wav")
