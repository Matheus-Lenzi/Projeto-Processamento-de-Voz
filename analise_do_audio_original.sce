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
wave_size = wavread(wave,"Size")(2)

// Recuperando apenas um canal de gravação (Mono) áudio original
x = X(1,:);

x_norm = x/(max(abs(x)))

// Plotando o áudio orginal
plot(x_norm)
