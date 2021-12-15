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

// Plotando o áudio orginal
subplot(3,1,1)
plot(x)

// Indicando o caminho onde está salvo o áudio cortado no formato .wav
wave2 = "C:\Users\Matheus\Desktop\Projeto Processamento de Voz\audio_cortado.wav";
wavread(wave2,"Size")
wavread(wave2,"Info")
// X2 -> Amplitude do som entre [-1, 1], com uma linha por canal de gravação
// Fs2 -> Frequência de amostragem em Hz
// bits2 -> Número de bits em X
[X2,Fs2,bits2] = wavread(wave2)

// Recuperando o tamanho do áudio cortado no formato .wav
wave_size2 = wavread(wave2,"Size")(2)

// Recuperando apenas um canal de gravação (Mono) áudio cortado
x2 = X2(1,:);

// Plotando o áudio cortado
subplot(3,1,2)
plot(x2)

// Aplicando a correlação
y = xcorr(x,x2);

// Normalizando os valoers de y
ynorm = y/max(y);

// Plotando o áudio orginal
subplot(3,1,3)
plot(y)
