# EcoWatt

## Desenvolvedores 
- Eduardo Foncesca Finardi | RM: 98624 | 2TDSA
- Lucca Rinaldi Valladão de Freitas | RM: 98207 | 2TDSA
- Ricardo Yuri Gonçalves Domingues | RM: 551808 | 2TDSA
- Angélica Ferreira de Matos Melo | RM: 550776 | 2TDSR
- Matheus Roberto Aparecido | RM: 98581 | 2TDSA

![image](https://github.com/user-attachments/assets/5530b6fc-ee27-444f-9219-55c2996b9d76)

## Descritivo da problemática
O planeta Terra se encontra em uma era específica da sua história que é a globalização, onde o mundo todo se encontra conectado e em constante integração entre si. Dentro desse contexto e entendendo a situação climática que vem se agravando desde o começo da revolução industrial com a constante, massiva e cada vez maior pegada ambiental, nos vemos (população mundial) com um único objetivo: Melhorar!
Portanto é necessário adotar meios para um futuro mais sustentável e ecológico visando a preservação da vida na terra. Vendo essa situação e o papel da população dentro desse processo, nós da EcoWatt viemos com a pequena mudança, que em grande escala fará uma diferença necessária.


## Descritivo da solução
O projeto EcoWatt consiste no desenvolvimento de um aplicativo de gerenciamento e controle de gasto energético doméstico, tendo como algumas funcionalidades: Registro de eletrodomésticos e seus respectivos consumos (em Watts), inserção de metas de consumo, previsões de consumo mensal e anual, registro de consumo diário. 
Nossos objetivos consistem em: Conscientizar a população quanto ao seu consumo energético e entender o impacto disso no meio ambiente, entender a previsão de gastos (financeiros e energéticos) e poder fazer o devido controle, além do domínio do gerenciamento da sua própria casa, que para muitos é algo complicado devido a falta de recursos como esse que a EcoWatt está oferecendo.

## Beneficios:
O EcoWatt oferece diversos benefícios significativos para os usuários e o meio ambiente. Primeiramente, ele promove a conscientização sobre o consumo de energia, ajudando as pessoas a entenderem como suas ações impactam o planeta. Além disso, a ferramenta permite um controle mais preciso dos gastos energéticos e financeiros, possibilitando o estabelecimento de metas e o acompanhamento do consumo diário. Com previsões mensais e anuais, os usuários podem planejar melhor suas despesas e reduzir desperdícios. Em grande escala, esse tipo de monitoramento e redução contribui para a preservação ambiental e a construção de um futuro mais sustentável. 
## Passo a passo de como criar uma Pipeline no Azure DevOps!!!

# Passo 1

### Se logar na sua conta da Microsoft Azure e pesquisar na barrinha de pesquisas por "Azure DevOps"

![image](https://github.com/user-attachments/assets/064f8dec-f718-4ec5-a821-da63462c8f3d)

Logo após irá aparecer a seguinte tela:

![image](https://github.com/user-attachments/assets/24d62aeb-a9a8-402f-9b75-c44a1e060916)

Clique em "My Azure DevOps Organizations"

# Passo 2

## Criação do projeto em que iremos subir nossa Pipeline!

![image](https://github.com/user-attachments/assets/920b930c-0a73-46b4-bc0c-621e120c5111)

## Criação de uma Task

Assim que o projeto for criado, clique em "Boards", depois em "Work itens", clique em "New Work Item" e selecione "Task"!

![image](https://github.com/user-attachments/assets/8d6bcfaa-0d15-4101-bbcb-b49f205dc3d6)

Atribua o nome da tarefa como "Implementar EcoWatt no Azure devOps"! 

Adicione uma breve descrição, mude o  "State" para ativo e em "No one selected" selecione um RM representante

## Clone do código fonte para o Azure Repos

Vamos precisar fazer o clone do repositório da nossa apliação DOTNET!

![image](https://github.com/user-attachments/assets/0e6f9091-5d69-4d3f-8435-171384f814c9)

Após isso clique em Repos no menu lateral esquerdo, depois clique no nome da aplicação e em seguida em "Import Repository"

![image](https://github.com/user-attachments/assets/d10bf99e-a8c2-47c3-8e87-05956f28ebde)

Cole a URL do seu repositório e clique em "importar"

![image](https://github.com/user-attachments/assets/fb01caa1-039b-43f4-a551-4e3c0ef5e6c8)

## Criação de uma branch nova

Depois que o repositório for importado corretamente, clique em "Files" selecione a branch "master" e depois clique em "New branch".

![image](https://github.com/user-attachments/assets/4b70210f-051a-40bc-b3ae-b75ba300673c)

Atribua o nome "Teste" para a nova branch e em "Work itens to link" selecione a tarefa em que criamos e depois clique em "create".

## Protegendo a branch master 

Após isso clique em "Branches" no menu lateral dentro do "Repos", depois clique nos 3 pontinhos da branch "master" e clique em "Branch polices".

![image](https://github.com/user-attachments/assets/4e81b160-916a-40ec-a4ad-24b90251cc62)

Habilite a função de "Require a minimum number of reviewrs". Coloque somente 1 e habilite o primeiro check box.

![image](https://github.com/user-attachments/assets/ee75de59-6be0-435d-ab6d-9ccb48e76222)

Habilite a função "Check for linked work itens" e deixe como obrigatório.

Depois disso vá em "Automatically included reviewrs" e adicione um RM e clique em "Save". 

![image](https://github.com/user-attachments/assets/88bbe77e-84cb-4209-b64e-333e3e592ead)

# Passo 3

## Após isso tudo, vá para a área de Pipeline e clique em "Create Pipeline"

![image](https://github.com/user-attachments/assets/77b7b5d1-85d1-49fb-a3c2-c8e4855ab3c0)

Clique em "Use the classic editor"

![image](https://github.com/user-attachments/assets/6ed06640-eb1f-499c-9b2e-2faeebbd7e44)

Clique em "Continue"

![image](https://github.com/user-attachments/assets/20dfcd8a-c521-4c05-9735-6bf368a4a5ce)

Selecione o template de ASP.NET

![image](https://github.com/user-attachments/assets/f794a495-3a1d-4651-8e05-682386482d2a)

## Agora vamos começar a configuração da nossa Pipeline

No campo de Pipeline nós vamos deixar da seguinte forma:

Antes

![image](https://github.com/user-attachments/assets/33252fec-7777-4a23-8d50-68b3a8ce51fd)

Depois

![image](https://github.com/user-attachments/assets/6317edcd-b17e-4a51-8383-33efed13fc84)

No campo de Agent Job 1 nós vamos deixar da seguinte forma:

Antes 

![image](https://github.com/user-attachments/assets/1ee34c75-67e4-4e6e-ba66-a0bce873a7a5)

Depois 

![image](https://github.com/user-attachments/assets/69acbd24-8869-475f-8feb-de0118f6e8f5)

No campo de Use NuGet nós vamos deixar da seguinte forma:

Antes 

![image](https://github.com/user-attachments/assets/45387a86-3f20-41b8-854b-085b78fa43fe)

Depois 

![image](https://github.com/user-attachments/assets/d680a176-1143-400c-b0a3-7f9fcb828ffa)

Não iremos alterar nada no campo de NuGet Restore!

No campo de Build Solution só iremos alterar o nome e deixar somente Build!

![image](https://github.com/user-attachments/assets/51826616-a0d6-4575-af74-cbfdb90b68fd)

O mesmo faremos com o campo de Test Assemblies! Mudando o nome para Teste!

![image](https://github.com/user-attachments/assets/a969dcb7-3d48-45f9-bc3d-12502fc556e8)

No campo de Publish symbols path iremos deixar da seguinte maneira:

Antes 

![image](https://github.com/user-attachments/assets/9dd52921-4c06-45c2-9d2c-49bb600adcb0)

Depois

![image](https://github.com/user-attachments/assets/dad58c8c-ff18-41be-93f8-fcd5a3071aaa)

Lembre-se de clicar em "Authorize" no campo de "Azure Resource"

No campo de Publish Artifact nâo iremos mudar nada!

Em Triggers, iremos habilitar a função de "continuos integration" e selecionar a branch da nossa solução!

![image](https://github.com/user-attachments/assets/d7e124f8-a3df-4238-8ea4-d3bcd969769e)

Em Options, iremos mudar o campo de "Build job authorization scope" de "Current project", para "Project collection"!

![image](https://github.com/user-attachments/assets/0ce51edf-68ec-47fb-bf73-5bb46cd4aebd)

## Clique em "Save & queue" escreva um comentário se quiser e clique em "Save and run"!

![image](https://github.com/user-attachments/assets/598309c7-a284-4755-be44-72109a782e7d)

Clique em "Build"!

![image](https://github.com/user-attachments/assets/df8eb627-4d0d-4b82-a2ba-8aee03fd8d26)

## Observe se todos os Logs obtiveram sucesso!

![image](https://github.com/user-attachments/assets/f66dd36d-7ebd-4bb0-a557-06e3138f0fab)

# Passo 4 - Criação de um grupo de recursos com um WebApp na Azure

## Abra o Microsoft Azure e inicie um terminal no cloud shell!

![image](https://github.com/user-attachments/assets/2992efad-976f-44a1-8855-53824feac9f9)

Após iniciado, copie cole uma linha de cada vez no terminal e observe se tudo ocorrerá como o esperado!

![image](https://github.com/user-attachments/assets/1862e583-ff45-4d68-bd52-6742a8ff7e31)

## Scripts do azure CLI para a criação dos recursos em nuvem

```
az account set --subscription "Azure for Students"
az group create --name ecowatt --location brazilsouth 
az appservice plan create -n ecowatt-app-ppt --location brazilsouth -g ecowatt --sku F1
az webapp create -g ecowatt -p ecowatt-app-ppt --runtime "dotnet:8" -n webappecowatt
```

# Passo 5 - Criação de uma Release!

Volte para o Azure DevOps e clique em "Releases" e logo em seguida em "Create Pipeline"

![image](https://github.com/user-attachments/assets/5d0c8af3-02ca-4493-bcff-e08235a8b42b)

Selecione a opção "Azure App Service deployment"!

![image](https://github.com/user-attachments/assets/cea3b924-4532-4c1d-90a8-e603b7cd01e6)

Logo em seguida, mude o "Stage name" de "Stage 1" para "Desenvolvimento"!

![image](https://github.com/user-attachments/assets/9edd74a6-1b7d-495e-a256-c2c1d0b8ac8d)

Em seguida clique em "Add an artifact" e no campo de "Source pipeline", selecione o nome da sua aplicação e depois adicione!

![image](https://github.com/user-attachments/assets/9fbdffe5-979c-4b48-9458-b460e0c086ea)

Clique neste símbolo!

![image](https://github.com/user-attachments/assets/52eaba3e-d4a0-4df5-b3ef-1b3d3bd14164)

Agora habilite a função de "Artifact filters", depois em "add" e selecione o nome da sua aplicação e depois selecine a branch!

![image](https://github.com/user-attachments/assets/b95d9ad7-4685-4d50-a97c-97e8356b78a1)

Agora clique em "1 job, 1 task"

![image](https://github.com/user-attachments/assets/dc9b645e-f41b-4d81-a408-7e4860445663)

## No campo de desenvolvimento iremos fazer as seguintes mudanças:

Antes 

![image](https://github.com/user-attachments/assets/8a491acb-0470-4062-afd6-7afddb3ddf97)

Depois 

Selecione a sua assinatura da Azure e depois em "Authorize", em seguida selecione o serviço de aplicativo que nós criamos na Azure através do cloud shell!

![image](https://github.com/user-attachments/assets/5121c7e1-692f-46da-86c8-081466046adb)

No campo de Run on Agent, iremos fazer as seguintes alterações:

Antes 

![image](https://github.com/user-attachments/assets/f47f9628-db14-4994-a267-4c3c794d5d26)

Depois 

![image](https://github.com/user-attachments/assets/92821e8b-53fa-4d6c-b44a-dc286f067d55)

Em Deploy Azure Service, não alteramos nada ah não ser conferir se o "Package or folder" está com ".zip" no final!

![image](https://github.com/user-attachments/assets/d418d2ce-0a8f-44f7-9719-796b0d518233)

Em Options fazemos a seguinte confecção!

![image](https://github.com/user-attachments/assets/7d57a2b3-f090-4fb7-a1cc-d0dc24701c6d)

Logo após, clicamos em "Save", adicionamos um comentário e em seguida clicamos em "Create release"!

![image](https://github.com/user-attachments/assets/2bc6c69d-b530-4b76-a4d3-56887713aff9)

Escreva um comentário se quiser e clique em "Create"!

![image](https://github.com/user-attachments/assets/3ed81c61-2b56-4235-816e-5c0480a573a9)

![image](https://github.com/user-attachments/assets/6dbb809b-0e77-4fbd-a806-2dd7c06611a3)

## Clique em Logs e observe se todos obtiveram sucesso!

![image](https://github.com/user-attachments/assets/dd649750-a20f-447e-b233-32997aa14032)

# Passo 6 - Chegou a hora de vermos se tudo deu certo!

## Abra o serviço de aplicativo em que criamos na Azure e em seguida procure o domínio padrão!

![image](https://github.com/user-attachments/assets/5b2ad4e4-491b-4265-8261-1ca4d593cf86)

Adicione "/swagger" na URL!

![image](https://github.com/user-attachments/assets/1af1f78f-896a-4bf8-af97-80e9066a7a45)

## Nossa aplicação rodando!

![image](https://github.com/user-attachments/assets/ba7634de-2cea-4961-b14b-eefc168980dc)

# Passo 7

## Teste todos os endpoints das duas tabelas que estão no swagger!!!

Primeiro realize o GET e clique em "Execute"! Este método retorna todos os clientes cadastrados no banco de dados!

![Screenshot 2024-09-16 222259](https://github.com/user-attachments/assets/d6d970ac-f3d8-4915-b0fe-0ce9d2647884)

Depois realize o POST e clique em "Execute"!

![Screenshot 2024-09-16 221938](https://github.com/user-attachments/assets/42b113c8-b630-41aa-a534-360cf98a181a)

Depois realize o GET pelo ID e clique em "Execute"! Este método irá retornar o cliente em que você está procurando pelo ID!

![Screenshot 2024-09-16 222532](https://github.com/user-attachments/assets/2b015022-3562-430c-82ac-81f7b34b3874)

![Screenshot 2024-09-16 222653](https://github.com/user-attachments/assets/957e68f4-29d0-4fe6-a3f2-1168667d9211)

Depois realize o UPDATE e clique em "Execute"! Insira o ID do cliente em que deseja atualizar algum dado e altere!

![Screenshot 2024-09-16 223024](https://github.com/user-attachments/assets/4f5e650f-136e-4371-aa75-d517782185c3)

![Screenshot 2024-09-16 225148](https://github.com/user-attachments/assets/0186105f-37f4-4490-9b0d-d47c2fd406c7)

Realize o GET novamente para ver a alteração ou veja pelo banco de dados!

O acesso do banco de dados da aplicação esta no arquivo "appsettings.json"!

![Screenshot 2024-09-16 224943](https://github.com/user-attachments/assets/9cb7a113-595f-40fd-b2c7-09b439dac2a5)

E por fim vamos realizar o DELETE pelo ID!

![Screenshot 2024-09-16 225515](https://github.com/user-attachments/assets/26903859-4e02-495b-b832-7ca725bd08b6)

![Screenshot 2024-09-16 225537](https://github.com/user-attachments/assets/91806011-cb8c-4600-9e78-4dd5b5d48ee1)

## Agora é só testar todos os endpoints da tabela consultoria e ver a persistência dos dados no banco!!!

## Scripts JSON do CRUD!

## Tabela Cliente

### GET

Retorna todos os clientes salvos no banco de dados!

### POST 

Cole o JSON e altere os dados, menos o ID, pois é gerado automaticamente!

```
{
  "clienteId": 0,
  "cnpj": "string",
  "nome": "string",
  "logradouro": "string",
  "ramodeAtuacao": "string",
  "email": "string",
  "senha": 0
}
```

### GET pelo ID 

Somente retorna o ID digitado!

### PUT

Digite o ID e altere o dado!

```
{
  "clienteId": 0,
  "cnpj": "string",
  "nome": "string",
  "logradouro": "string",
  "ramodeAtuacao": "string",
  "email": "string",
  "senha": 0
}
```

### DELETE

Soemente o número do ID!

## Tabela consultoria 

### GET 

Retorna todos as consultorias salvas no banco de dados!

### POST 

Cole o JSON e altere os dados, menos o ID, pois é gerado automaticamente!

```
{
  "consultoriaId": 0,
  "nomeConsultoria": "string"
}
```

### GET pelo ID

Somente retorna o ID digitado!

### PUT

Digite o ID e altere o dado!

```
{
  "consultoriaId": 0,
  "nomeConsultoria": "string"
}
```

### DELETE

Soemente o número do ID!

# No final o serviço de WebApp ficará assim na Azure!!!

![image](https://github.com/user-attachments/assets/a0d67ffc-49ad-4aab-a7e3-af4cd8a256ae)

## Agora vamos criar o banco SQL da Azure na nuvem 

Para isso crie um novo recurso e selecione "SQL Database"!

![Screenshot 2024-09-16 233126](https://github.com/user-attachments/assets/ec3e7000-2d29-46de-a80f-3635725a5edb)

Selecione o mesmo grupo de recurso que criamos para o WebApp e defina um nome para o seu banco de dados na nuvem!!

![Screenshot 2024-09-16 233322](https://github.com/user-attachments/assets/dd8cdd00-0ee1-4593-ba3e-764fb454049a)

Após isso crie um novo servidor e defina um nome e selecione EastUs ou EastUS 2 

![Screenshot 2024-09-16 233451](https://github.com/user-attachments/assets/59417f07-7bf4-4a0b-a954-fa8ee286296a)

Habilite a autenticação SQL e defina um logon e uma senha! No nosso o caso o logon é "adm-sqldb-targetcustomer" e a senha "Fiap@2tds2024"!!!

![Screenshot 2024-09-16 233612](https://github.com/user-attachments/assets/0c5be04f-5530-47a2-a671-7e0711584afb)

Em computação + armazenamento selecione o plano básico!!!

![Screenshot 2024-09-16 233830](https://github.com/user-attachments/assets/9f49757c-1b66-466a-b72d-3db720885342)

Em rede selecione o "ponto de extremidade público" e nas regras de firewall deixe tudo como "sim"!!!

![Screenshot 2024-09-16 234030](https://github.com/user-attachments/assets/dc780e76-ebfb-49c3-8d23-26e3c4a6e8f6)

Após isso clique em "Criar" e espere a implantação!!!

![Screenshot 2024-09-16 234245](https://github.com/user-attachments/assets/f28a74f7-98be-449d-b8d3-0118a622cb14)

Assim que criado clique em "Ir para o recurso" e depois em "Editor de consultas" nas opções da lateral esquerda!!!

![image](https://github.com/user-attachments/assets/b93e6e45-3600-4d01-8381-cc9187b5e7a8)

Irá aparecer uma tela de acesso ao banco de dados!!! Coloque o logon e a senha que definimos!!!

![Screenshot 2024-09-16 234523](https://github.com/user-attachments/assets/313355a3-debb-48e7-88fc-1277b1e871fc)

Irá ser exebida uma tela onde iremos colocar o nosso script!!!

![Screenshot 2024-09-16 234631](https://github.com/user-attachments/assets/1a02a3d4-254a-47c7-96f3-5a70d5e0af3f)

```
--Criação da tabela com o drop
DROP TABLE T_TC_CADASTRO;
CREATE TABLE T_TC_CADASTRO(
  id_cadastro NUMERIC NOT NULL,
  nr_cnpj NUMERIC(14) NOT NULL,
  varchar_senha VARCHAR(60) NOT NULL,
  nm_razaosocial VARCHAR(80) NOT NULL,
  CONSTRAINT T_TC_CADASTRO_PK PRIMARY KEY (id_cadastro)
);
 
--CRUD
 
--Create
INSERT INTO T_TC_CADASTRO (id_cadastro, nr_cnpj, varchar_senha, nm_razaosocial) VALUES (1, 12345678901234, 'senha123', 'Empresa Exemplo LTDA');
INSERT INTO T_TC_CADASTRO (id_cadastro, nr_cnpj, varchar_senha, nm_razaosocial) VALUES (2, 23456789012345, 'senha234', 'Empresa Exemplo LTDB');
INSERT INTO T_TC_CADASTRO (id_cadastro, nr_cnpj, varchar_senha, nm_razaosocial) VALUES (3, 34567890123456, 'senha345', 'Empresa Exemplo LTDC');
INSERT INTO T_TC_CADASTRO (id_cadastro, nr_cnpj, varchar_senha, nm_razaosocial) VALUES (4, 45678901234567, 'senha456', 'Empresa Exemplo LTDD');
INSERT INTO T_TC_CADASTRO (id_cadastro, nr_cnpj, varchar_senha, nm_razaosocial) VALUES (5, 56789012345678, 'senha567', 'Empresa Exemplo LTDE');
 
--Read
SELECT * FROM T_TC_CADASTRO;
 
--Read pelo id
SELECT * FROM T_TC_CADASTRO
WHERE id_cadastro = 1;
 
SELECT * FROM T_TC_CADASTRO
WHERE id_cadastro = 2;
 
SELECT * FROM T_TC_CADASTRO
WHERE id_cadastro = 3;
 
SELECT * FROM T_TC_CADASTRO
WHERE id_cadastro = 4;
 
SELECT * FROM T_TC_CADASTRO
WHERE id_cadastro = 5;
 
--Read pelo cnpj
SELECT * FROM T_TC_CADASTRO
WHERE nr_cnpj = 56789012345678;
 
--Update no nome da razão social
UPDATE T_TC_CADASTRO
SET nm_razaosocial = 'Empresa Exemplo Atualizada LTDA'
WHERE id_cadastro = 1;
 
UPDATE T_TC_CADASTRO
SET nm_razaosocial = 'Empresa Exemplo Atualizada LTDB'
WHERE id_cadastro = 2;
 
UPDATE T_TC_CADASTRO
SET nm_razaosocial = 'Empresa Exemplo Atualizada LTDC'
WHERE id_cadastro = 3;
 
UPDATE T_TC_CADASTRO
SET nm_razaosocial = 'Empresa Exemplo Atualizada LTDD'
WHERE id_cadastro = 4;
 
UPDATE T_TC_CADASTRO
SET nm_razaosocial = 'Empresa Exemplo Atualizada LTDE'
WHERE id_cadastro = 5;
 
--Update de senha 
UPDATE T_TC_CADASTRO
SET varchar_senha = 'bananinha123'
WHERE id_cadastro = 5;
 
--Delete pelo id
DELETE FROM T_TC_CADASTRO
WHERE id_cadastro = 1;
 
DELETE FROM T_TC_CADASTRO
WHERE id_cadastro = 2;
 
DELETE FROM T_TC_CADASTRO
WHERE id_cadastro = 3;
 
DELETE FROM T_TC_CADASTRO
WHERE id_cadastro = 4;
 
DELETE FROM T_TC_CADASTRO
WHERE id_cadastro = 5;
 
--Delete pelo cnpj
DELETE FROM T_TC_CADASTRO
WHERE nr_cnpj = 56789012345678;
 
--Criação da tabela relacionada com drop
DROP TABLE T_TC_CONSULTA;
CREATE TABLE T_TC_CONSULTA(
  id_consulta NUMERIC NOT NULL,
  ds_consulta VARCHAR(80) NOT NULL,
  dt_consulta DATE NOT NULL,
  blob_csv_arquivo VARBINARY(MAX) NOT NULL,
  id_cadastro NUMERIC NOT NULL,
  CONSTRAINT T_TC_CONSULTA_PK PRIMARY KEY (id_consulta),
  CONSTRAINT T_TC_CADASTRO_CONSULTA_FK FOREIGN KEY (id_cadastro) REFERENCES T_TC_CADASTRO(id_cadastro)
);
 
--CRUD
 
--Create
INSERT INTO T_TC_CONSULTA (id_consulta, ds_consulta, dt_consulta, blob_csv_arquivo, id_cadastro) VALUES (1, 'Consulta sobre impostos', '2002-10-12', CAST(0x48656C6C6F AS VARBINARY(MAX)), 1);
INSERT INTO T_TC_CONSULTA (id_consulta, ds_consulta, dt_consulta, blob_csv_arquivo, id_cadastro) VALUES (2, 'Consulta sobre exportação', '2002-11-05', CAST(0x56656E646173 AS VARBINARY(MAX)), 2);
INSERT INTO T_TC_CONSULTA (id_consulta, ds_consulta, dt_consulta, blob_csv_arquivo, id_cadastro) VALUES (3, 'Consulta sobre importação', '2002-09-22', CAST(0x4573746F717565 AS VARBINARY(MAX)), 3);
INSERT INTO T_TC_CONSULTA (id_consulta, ds_consulta, dt_consulta, blob_csv_arquivo, id_cadastro) VALUES (4, 'Consulta sobre regulamentação', '2002-03-07', CAST(0x466F726E656 AS VARBINARY(MAX)), 4);
INSERT INTO T_TC_CONSULTA (id_consulta, ds_consulta, dt_consulta, blob_csv_arquivo, id_cadastro) VALUES (5, 'Consulta sobre inovação', '2002-02-15', CAST(0x46696E616 AS VARBINARY(MAX)), 5);
 
--Read
SELECT * FROM T_TC_CONSULTA;
 
--Read pelo id 
SELECT * FROM T_TC_CONSULTA
WHERE id_consulta = 1;
 
SELECT * FROM T_TC_CONSULTA
WHERE id_consulta = 2;
 
SELECT * FROM T_TC_CONSULTA
WHERE id_consulta = 3;
 
SELECT * FROM T_TC_CONSULTA
WHERE id_consulta = 4;
 
SELECT * FROM T_TC_CONSULTA
WHERE id_consulta = 5;
 
--Read pela data da consulta
SELECT * FROM T_TC_CONSULTA
WHERE dt_consulta = '2002-10-12';
 
--Update da descrição da consulta
UPDATE T_TC_CONSULTA
SET ds_consulta = 'Consulta sobre impostos atualizada'
WHERE id_consulta = 1;
 
UPDATE T_TC_CONSULTA
SET ds_consulta = 'Consulta sobre exportação atualizada'
WHERE id_consulta = 2;
 
UPDATE T_TC_CONSULTA
SET ds_consulta = 'Consulta sobre importação atualizada'
WHERE id_consulta = 3;
 
UPDATE T_TC_CONSULTA
SET ds_consulta = 'Consulta sobre regulamentação atualizada'
WHERE id_consulta = 4;
 
UPDATE T_TC_CONSULTA
SET ds_consulta = 'Consulta sobre inovação atualizada'
WHERE id_consulta = 5;
 
--Update da data da consulta
UPDATE T_TC_CONSULTA
SET dt_consulta = '2000-10-12'
WHERE id_consulta = 5;
 
--Delete pelo id
DELETE FROM T_TC_CONSULTA
WHERE id_consulta = 1;
 
DELETE FROM T_TC_CONSULTA
WHERE id_consulta = 2;
 
DELETE FROM T_TC_CONSULTA
WHERE id_consulta = 3;
 
DELETE FROM T_TC_CONSULTA
WHERE id_consulta = 4;
 
DELETE FROM T_TC_CONSULTA
WHERE id_consulta = 5;
 
--Delete pela data da consulta
DELETE FROM T_TC_CONSULTA
WHERE dt_consulta = '2000-10-12';
```

## Cole o script no console e realize a criação das tabelas (uma de cada vez) e os seus devidos CRUDS (um de cada vez)

## Após realizar as tabelas e seus devidos cruds, podemos ver que as tabelas foram criadas, na parte de tabelas na lateral esquerda do console!!!

![Screenshot 2024-09-16 235315](https://github.com/user-attachments/assets/c706b19e-05fb-4d85-baf7-8e960d746b41)

## Por fim podemos ver a criação do banco de dados dentro do grupo de recursos!!!

![Screenshot 2024-09-16 235457](https://github.com/user-attachments/assets/aa0130a9-09a8-4956-8485-881e12ebe4c2)

# Link do Azure DevOps:

https://dev.azure.com/RM551808/EcoWatt

# Link do Azure Repos:

https://dev.azure.com/RM551808/EcoWatt/_git/EcoWatt-GS.git

# Link GitHub:

https://github.com/ricardoyuuri/EcoWatt-GS

# Link do Vídeo:












































