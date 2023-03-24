
Atividade I - Prática!!!
  Crie mais 2 projetos (sem copiar/colar/aproveitar código);
  Em um dos projetos crie pelo menos 5 interfaces diferentes.

Atividade II - responda as questões (arquivo 1 (App) e 2 (Home))
  Tente realizar sozinho e sem consulta. Caso não consiga pode consultar ou pedir ajuda.
  Para cada questão, identifique se precisou de ajuda (I - consulta internet, C - ajuda dos colegas, P - ajuda do professor, D - discussão)
  
Atividade III
  Ao terminar, forme duplas e faça a discussão das respostas!!! Concorde e/ou discorde com argumentos! 
>>em relação ao App
  POO
  01 - Caso exista em relação ao código acima, informe:
    a) Nome classe: App
    b) Herança: StatelessWidget
    c) Nome interface: Não usado
    d) Atributos: title e home do Material App
    e) Métodos: MaterialApp
    f) nome construtor(es): Construtores padrões da classe

  02 - Por qual motivo build é obrigatório?
  O conceito de "build" refere-se ao método responsável por construir ou reconstruir a árvore de widgets que compõem a interface do usuário. O método build é obrigatório em qualquer classe que estenda a classe StatelessWidget ou StatefulWidget.

    Isso ocorre porque o framework Flutter é baseado em um modelo reativo, em que a interface do usuário é atualizada sempre que o estado do aplicativo muda. O método build é chamado sempre que o estado do widget é alterado, permitindo que a interface do usuário seja atualizada com as alterações.



  03 - Qual é a assinatura do build? Podemos alterar? Explique.
  O método recebe um BuildContext e não é possível alterar pois se trata de uma classe abstrata

  04 - O que é context? Qual tipo? Podemos alterar para outro nome (justifique)?
  É um objeto do tipo BuildContext que contém informações sobre a árvore de widgets atual, como a posição do widget na árvore, tema, localização e outras informações relacionadas à interface do usuário. É uma forma de obter acesso aos recursos e objetos do ambiente em que o widget está sendo construído.

  05 - Utilizamos parâmetros? Se sim, onde (explique/detalhe), quais são os tipos e informe se são obrigatórios? 

  06 - O que é const? Para que serve? Por que devemos utilizá-lo?
  Para definir uma constante, e ali indicamos para a linguagem que se trata de um objeto que não sofrerá alterações.

  07 - Em que caso não se deve definir const? Exemplifique.
  Quando nosso objeto pode receber uma alteração, como por exemplo um text de um botão que pode adotar comportamentos diferentes de acordo com as entradas do usuário.



  Dart - Widget
  01 - Quais são as opções de importação do StatelessWidget? Explique as diferenças.
    Temos 3 tipos, que se tratam de padrões estéticos e comportamentos que os elementos da tela pode adotar de acordo com o tipo de dispositivo. São eles: Material(Android), Cupertino(IOS), e Widgets( que tenta mesclar ambos).

  02 - No método build, é possível definir o parâmetro sem o tipo? Se sim, qual seria melhor (com ou sem a definição do tipo)?
    É possível fazer sem os tipos, porém não é considerado boas práticas de desenvolvimento
  01 - Explique em detalhes, o title (o que é, de quem é, como é, o que se espera)?
  02 - Em relação ao código acima, quantos objetos foram criados? Justifique.
  03 - Por que utilizou-se const no contrutor da classe? Qual vantagem?
  04 - Em que caso não devemos utilizar const no contrutor da classe?
  05 - O que é e para que serve o key?
  06 - Em relação ao Scaffold:
    (a) Todos os parâmetros que definimos no construtor do Scaffold são obrigatórios? Explique.
     (c) Informe o nome de 1 parâmetro de valor de 1 parâmetro de referência.
    (d) Em relação ao código, defina mais 2 parâmetros - 1 que não gere o impacto visual.