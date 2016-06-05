Lab Package - Definicção de classes: avaliação da mudança da sintaxe de classe das versões 5 e 6 do ECMAScript
==========================================================================

### Introdução
Sistema criado para aplicar um filtro (Smooth) 5x5 em imagens PPM e PGM.
O comando make criará três binários para processar a imagem:

1. **PPMseq:** algoritmo sequencial.

2. **PPMmpi:** esse programa divide a imagem em linhas e distribui para os nós pelo MPI.
O rank 0 comanda a comunicação e cria 1 thread (OpenMP) para controlar cada processo. É responsável por enviar o trabalho para os nós e gerenciar quem pode gravar no disco para não gerar concorrência. Cada nó divide seu trabalho em threads (OpenMP) que realizam a leitura de sua parte da imagem e aplicam a técnica de Smooth. Quando terminado o trabalho, o nó solicita permissão para gravar o resultado no disco.

3. **PPMcuda:** para processar a imagem é utilizada memória textura, evitando conflito de banco.

### Dependências
1. Interface Gráfica NVIDIA

2. Pacotes necessários:

* `sudo apt-get install nvidia-cuda-toolkit`
* `sudo apt-get install build-essential`


