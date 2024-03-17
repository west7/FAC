# Como implementar uma arquitetura em um processador

Processador:
- Caminho de dados
- Controle

# Multiple implementations for a single architecture

- **Singlecycle**
- **Multicycle**
- **Pipelined**

# Single-cycle
Em uma arquitetura singlecycle, cada instrução é executada em um clock time. Em uma arquitetura single-cycle, o caminho de dados e o controle são simplificados em comparação com abordagens multi-cycle ou pipelined. Vamos dar uma olhada em como eles funcionam nesse contexto:

### Caminho de Dados (Datapath):

O caminho de dados em uma arquitetura single-cycle é relativamente direto e geralmente consiste em:

1. **Registradores:** Um conjunto de registradores de propósito geral, onde os dados são armazenados temporariamente.
2. **Unidades Funcionais Simples:** Módulos de execução para operações básicas, como somas, subtrações, lógica, acesso à memória, etc.
3. **Conexões Diretas:** As instruções passam por cada uma dessas unidades funcionais sequencialmente, em um único ciclo de clock, sem estágios de pipeline.

### Controle:

O controle em uma arquitetura single-cycle é direto e baseado na instrução atualmente sendo executada. Geralmente, é implementado com uma Unidade de Controle centralizada, que inclui:

1. **Decodificação Simples:** O código de operação (opcode) da instrução é decodificado para determinar a operação a ser realizada e quais recursos (registradores, unidades funcionais, etc.) serão usados.
2. **Sinais de Controle Fixos:** Com base na instrução atual, os sinais de controle são ativados para direcionar o caminho de dados para executar a operação correta.
3. **Um Ciclo por Instrução:** Cada instrução passa por todos os estágios (busca, decodificação, execução, escrita) em um único ciclo de clock.

### Limitações:

- **Ineficiência para Instruções Diferentes:** Todas as instruções, independentemente da complexidade, são executadas em um único ciclo. Isso pode resultar em ciclos desperdiçados para instruções mais simples.
- **Tempo Fixo de Execução:** O tempo de execução é determinado pelo estágio mais lento. Instruções mais simples podem terminar rapidamente, mas são retardadas pelo ciclo fixo.

Apesar da simplicidade, a abordagem single-cycle pode resultar em subutilização de recursos, já que instruções mais simples acabam sendo retardadas para se ajustar ao ciclo de clock fixo. Isso leva à busca de abordagens mais eficientes, como as arquiteturas multi-ciclo ou pipelined, que podem otimizar a utilização dos recursos do processador.