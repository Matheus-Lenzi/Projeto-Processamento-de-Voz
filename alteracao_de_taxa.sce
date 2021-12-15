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
y_upscale = zeros(2*wave_size,1);
y_upscale(1) = 0;

// Implementado do aumento de taxa pelo fator 2
for n = 2:wave_size
    y_upscale(2*n) = x(n)
end

// Plotando os valores de y
subplot(2,1,1)
plot2d(y_upscale)

// Escrevendo os valores de y no formato .wav
wavwrite(y_upscale, Fs, bits, "C:\Users\Matheus\Desktop\Projeto Processamento de Voz\audio_aumento_fator_2.wav")

// Definindo os valores iniciais dos vetores indexados
y_downscale = zeros(floor(wave_size/2),1);
y(1) = 0;

// Implementado do diminuição de taxa pelo fator 2
for n = 2:floor(wave_size/2)
    y_downscale(n) = x(2*n)
end

// Plotando os valores de y
subplot(2,1,2)
plot2d(y_downscale)

// Escrevendo os valores de y no formato .wav
wavwrite(y_downscale, Fs, bits, "C:\Users\Matheus\Desktop\Projeto Processamento de Voz\audio_diminuicao_fator_2.wav")
