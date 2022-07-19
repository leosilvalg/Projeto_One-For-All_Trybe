# Boas vindas ao repositório do projeto One For All!


# Entregáveis

<details>
  <summary><strong>👨‍💻 O que deverá ser desenvolvido</strong></summary><br />

Hoje, no projeto ***One For All***, você usará **uma** tabela para revisar e consolidar **todos** os principais conceitos vistos até o momento.

Você receberá uma tabela não normalizada que deverá ser normalizada e populada para que você possa executar queries com o intuito de encontrar as informações solicitadas.

## Desenvolvimento

Normalize uma tabela na terceira forma normal e acesse as informações desta tabela através de `queries` utilizando `SQL`.

</details>

## Orientações

<details>
  <summary><strong>:whale: Rodando no Docker vs Localmente</strong></summary><br />
  
  ## Com Docker
 
  > Rode os serviços `node` e `db` com o comando `docker-compose up -d`.
  - Lembre-se de parar o `mysql` se estiver usando localmente na porta padrão (`3306`), ou adapte, caso queria fazer uso da aplicação em containers
  - Esses serviços irão inicializar um container chamado `one_for_all` e outro chamado `one_for_all_db`.
  - A partir daqui você pode rodar o container `one_for_all` via CLI ou abri-lo no VS Code.

  > Use o comando `docker exec -it one_for_all bash`.
  - Ele te dará acesso ao terminal interativo do container criado pelo compose, que está rodando em segundo plano;
  - As credencias de acesso ao banco de dados estão definidas no arquivo `docker-compose.yml`, e são acessíveis no container através das variáveis de ambiente `MYSQL_USER` e `MYSQL_PASSWORD`. 💡

  > Instale as dependências [**Caso existam**] com `npm install`
  
  ⚠ Atenção ⚠ Caso opte por utilizar o Docker, **TODOS** os comandos disponíveis no `package.json` (npm start, npm test, npm run dev, ...) devem ser executados **DENTRO** do container, ou seja, no terminal que aparece após a execução do comando `docker exec` citado acima. 

  ⚠ Atenção ⚠ O **git** dentro do container não vem configurado com suas credenciais. Ou faça os commits fora do container, ou configure as suas credenciais do git dentro do container.

  ⚠ Atenção ⚠ Não rode o comando npm audit fix! Ele atualiza várias dependências do projeto, e essa atualização gera conflitos com o avaliador.


✨ **Dica:** A extensão `Remote - Containers` (que estará na seção de extensões recomendadas do VS Code) é indicada para que você possa desenvolver sua aplicação no container Docker direto no VS Code, como você faz com seus arquivos locais.

<img src="images/remote-container.png" width="800px" >

 :warning: Atenção :warning: Para que você consiga rodar o seu projeto com docker e o avaliador funcione é fundamental que o seu docker compose esteja na **versão 1.29** 
 primeiro verifique sua versão 
 > docker-compose --version

 Se não for a versão 1.29, faça os seguintes comandos para atualizar a versão:
 
 >sudo rm /usr/local/bin/docker-compose

 >sudo curl -L "https://github.com/docker/compose/releases/download/1.29.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

 >sudo chmod +x /usr/local/bin/docker-compose


---
  
  ## Sem Docker
  
  
  > Instale as dependências [**Caso existam**] com `npm install`
  
  ⚠ Atenção ⚠ Não rode o comando npm audit fix! Ele atualiza várias dependências do projeto, e essa atualização gera conflitos com o avaliador.

  ✨ **Dica:** Para rodar o projeto desta forma, obrigatoriamente você deve ter o `node` instalado em seu computador.
  ✨ **Dica:** O avaliador espera que a versão do `node` utilizada seja a 16.

  <br/>
</details>

<details>
  <summary><strong>🎯 Problema a ser resolvido</strong></summary><br />


Você receberá uma tabela não normalizada semelhante ao que poderia ser uma versão simplificada do banco de dados do Spotify. O trabalho consistirá de duas partes:

1. Normalizar essa tabela, criar o schema no seu banco de dados local e populá-lo;

2. Realizar os desafios no seu banco normalizado e populado.

## Normalize as tabelas para a 3ª Forma Normal

Antes de tudo, você deverá modelar e normalizar essas tabelas para a 3° Forma Normal. Monte quantas planilhas e tabelas forem necessárias para criar essa versão normalizada desde que você siga as regras de negócio. Não é necessário criar o código SQL neste momento.

Seu banco de dados deve seguir as regras de negócio e ser capaz de recuperar:

* Informações sobre quais planos estão disponíveis e seus detalhes;
  * Cada pessoa usuária pode possuir apenas um plano.

* Informações sobre todas as pessoas artistas;
  * Uma pessoa artista pode ter vários álbuns;
  * Uma pessoa artista pode ser seguida por várias pessoas usuárias.

* Informações sobre todos os álbuns de cada artista;
  * Para fins deste projeto, considere que cada álbum possui apenas uma pessoa artista como principal;
  * Cada álbum possui várias canções.

* Informações sobre todas as canções de cada álbum;
  * Para fins deste projeto, considere que cada canção está contida em apenas um álbum.

* Informações sobre todas as pessoas usuárias, seus planos, seu histórico de reprodução e pessoas artistas seguidas.
  * Uma pessoa usuária pode possuir apenas um plano;
  * Cada música do histórico de reprodução pode aparecer uma única vez por pessoa (para simplificar, considere que o objetivo do histórico é saber **quais** canções já foram reproduzidas e **não quantas vezes** foram reproduzidas);
  * Uma pessoa usuária pode seguir várias pessoas artistas, mas cada pessoa artista pode ser seguida apenas uma vez por pessoa usuária.

</details>

# Requisitos do projeto

## Desafio 1

* Crie um banco com o nome de **`SpotifyClone`**.

* Providencie as queries necessárias para criar tabelas normalizadas que atendam aos requisitos descritos na seção anterior;

* Providencie as queries necessárias para popular as tabelas de acordo com os dados listados na seção anterior;

* Crie um arquivo de configurações `desafio1.json`, que mapeará em qual tabela e coluna se encontram as informações necessárias para a avaliação automatizada deste desafio. 

<details>
  <summary><strong>👇 As configurações devem possuir o seguinte formato</strong></summary><br />

  ```json
  {
    "coluna_usuario": "nome-da-coluna",
    "tabela_que_contem_usuario": "nome-da-tabela-que-armazena-a-coluna",
    "coluna_plano": "nome-da-coluna",
    "tabela_que_contem_plano": "nome-da-tabela-que-armazena-a-coluna",
    "coluna_historico_de_reproducoes": "nome-da-coluna",
    "tabela_que_contem_historico_de_reproducoes": "nome-da-tabela-que-armazena-a-coluna",
    "coluna_seguindo_artistas": "nome-da-coluna",
    "tabela_que_contem_seguindo_artistas": "nome-da-tabela-que-armazena-a-coluna",
    "coluna_artista": "nome-da-coluna",
    "tabela_que_contem_artista": "nome-da-tabela-que-armazena-a-coluna",
    "coluna_album": "nome-da-coluna",
    "tabela_que_contem_album": "nome-da-tabela-que-armazena-a-coluna",
    "coluna_cancoes": "nome-da-coluna",
    "tabela_que_contem_cancoes": "nome-da-tabela-que-armazena-a-coluna"
  }
  ```

  Essa configuração deve ser feita baseada no seu banco de dados **após a normalização**. Ou seja, se você criou uma tabela chamada `users` que possui a coluna `name`, você substituiria `"coluna_usuario"` e `"tabela_que_contem_usuario"` da seguinte forma:

  ```json
  {
    "coluna_usuario": "name",
    "tabela_que_contem_usuario": "users",
    ...
  }
  ```

</details>

* Salve as queries criadas no arquivo `desafio1.sql`.

<details>
<summary><strong>👇 Seu código deverá ser similar ao seguinte</strong></summary><br />

  ```sql
  DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE SpotifyClone;

  CREATE TABLE SpotifyClone.tabela1(
      coluna1 tipo restricoes,
      coluna2 tipo restricoes,
      colunaN tipo restricoes,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.tabela2(
      coluna1 tipo restricoes,
      coluna2 tipo restricoes,
      colunaN tipo restricoes,
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');
  ```

</details>

<details>
<summary><strong>☑️ O que será verificado</strong></summary><br />

  - Será validado se os planos estão na tabela normalizada.

  - Será validado se o histórico de reprodução está na tabela normalizada.

  - Será validado se as informações sobre pessoas seguindo artistas estão na tabela normalizada.

  - Será validado se os álbuns estão na tabela normalizada.

  - Será validado se as canções estão na tabela normalizada.

  - Será validado se as informações sobre pessoas usuárias estão na tabela normalizada.

  - Será validado se as informações sobre artistas estão na tabela normalizada.

  ⚠️ Note que uma vez executado um teste, a sua base de dados `SpotifyClone` **será dropada**. Logo, **se atente** a salvar seu progresso nos arquivos de desafio! ⚠️
 
</details>

## Desafio 2

Crie uma `QUERY` que exiba três colunas:

1. A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "**cancoes**".

2. A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "**artistas**".

3. A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "**albuns**".

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:


O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `cancoes`, `artistas` e `albuns`.

</details>

## Desafio 3

Crie uma `QUERY` que deverá ter apenas três colunas:

1. A primeira coluna deve possuir o alias "**usuario**" e exibir o nome da pessoa usuária.

2. A segunda coluna deve possuir o alias "**qtde_musicas_ouvidas**" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.

3. A terceira coluna deve possuir o alias "**total_minutos**" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.

Os resultados devem estar agrupados pelo nome da pessoa usuária e ordenados em ordem alfabética.

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:


O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `usuario`, `qtde_musicas_ouvidas` e `total_minutos`.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

## Desafio 4

Crie uma `QUERY` que deve mostrar as pessoas usuárias que estavam ativas no ano de **2021** se baseando na data mais recente no histórico de reprodução.

1. A primeira coluna deve possuir o alias "**usuario**" e exibir o nome da pessoa usuária.

2. A segunda coluna deve ter o alias "**condicao_usuario**" e exibir se a pessoa usuária está ativa ou inativa.

O resultado deve estar ordenado em ordem alfabética.

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `usuario` e `condicao_usuario`.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

## Desafio 5

Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma `QUERY` que possua duas colunas:

1. A primeira coluna deve possuir o alias "**cancao**" e exibir o nome da canção.

2. A segunda coluna deve possuir o alias "**reproducoes**" e exibir a quantidade de pessoas que já escutaram a canção em questão.

Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:


O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `cancao` e `reproducoes`.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

## Desafio 6

Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, queremos algumas informações sobre o faturamento da empresa. Crie uma `QUERY` que deve exibir quatro dados:

1. A primeira coluna deve ter o alias "**faturamento_minimo**" e exibir o menor valor de plano existente para uma pessoa usuária.

2. A segunda coluna deve ter o alias "**faturamento_maximo**" e exibir o maior valor de plano existente para uma pessoa usuária.

3. A terceira coluna deve ter o alias "**faturamento_medio**" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento.

4. Por fim, a quarta coluna deve ter o alias "**faturamento_total**" e exibir o valor total obtido com os planos possuídos por pessoas usuárias.

Para cada um desses dados, por se tratarem de valores monetários, deve-se arredondar o faturamento usando apenas duas casas decimais.

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `faturamento_minimo`, `faturamento_maximo`, `faturamento_medio` e `faturamento_total`.

</details>

## Desafio 7

Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma `QUERY` com as seguintes colunas:

1. A primeira coluna deve exibir o nome da pessoa artista, com o alias "**artista**".

2. A segunda coluna deve exibir o nome do álbum, com o alias "**album**".

3. A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "**seguidores**".

Seus resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa artista em ordem alfabética e caso há artistas com o mesmo nome, ordene os resultados pelo nome do álbum alfabeticamente.

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `artista`, `album` e `seguidores`.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

## Desafio 8

Mostre uma relação dos álbuns produzidos por um artista específico, neste caso `"Walter Phoenix"`.
Para isto crie uma `QUERY` que o retorno deve exibir as seguintes colunas:

1. O nome da pessoa artista, com o alias "**artista**".

2. O nome do álbum, com o alias "**album**".

Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:

O que será verificado:

- Será validado se a `QUERY` retorna a coluna `artista` contendo o nome da pessoa artista e a coluna `album` contendo o nome do álbum.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

## Desafio 9

Crie uma `QUERY` que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico do usuário `"Bill"` e a consulta deve retornar a seguinte coluna:

1. O valor da quantidade, com o alias "**quantidade_musicas_no_historico**".

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:


O que será verificado:

- Será validado se a `QUERY` retorna a quantidade correta de canções presentes no histórico de reprodução da pessoa especificada.

</details>

## Desafio 10

Crie uma `QUERY` que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano gratuito ou pessoal de acordo com os detalhes a seguir:

* A primeira coluna deve exibir o nome da canção, com o alias "**nome**";

* A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias "**reproducoes**";

* Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética.

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />




O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `nome` e `reproducoes`.

- Será validado se as colunas estão ordenadas de forma correta.

</details>


