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

Após iniciado, copie e cole uma linha de cada vez no terminal e observe se tudo ocorrerá como o esperado!

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

![image](https://github.com/user-attachments/assets/c9266513-04ac-4a54-ba9b-c2a00ceee7d4)

Selecione a opção "Azure App Service deployment"!

![image](https://github.com/user-attachments/assets/b4360b22-c7ca-47a7-bc1d-565290a1289b)

Logo em seguida, mude o "Stage name" de "Stage 1" para "Desenvolvimento"!

![image](https://github.com/user-attachments/assets/f2d64377-aab8-4b8c-aed7-553afef37b7b)

Em seguida clique em "Add an artifact" e no campo de "Source pipeline", selecione o nome da sua aplicação e depois adicione!

![image](https://github.com/user-attachments/assets/f30e6098-b7b3-4ba3-b31f-3decab83304c)

Clique neste símbolo!

![image](https://github.com/user-attachments/assets/3a40b01f-2b31-4081-9dac-20b4a12ebf15)

Agora habilite a função de "Artifact filters", depois em "add" e selecione o nome da sua aplicação e depois selecine a branch!

![image](https://github.com/user-attachments/assets/86bc3c78-49a1-4530-ab00-76803dd6d70d)

Agora clique em "1 job, 1 task"

![image](https://github.com/user-attachments/assets/dc9b645e-f41b-4d81-a408-7e4860445663)

## No campo de desenvolvimento iremos fazer as seguintes mudanças:

Antes 

![image](https://github.com/user-attachments/assets/51f483c1-105d-431c-adea-4d8cadb02522)

Depois 

Selecione a sua assinatura da Azure e depois em "Authorize", em seguida selecione o serviço de aplicativo que nós criamos na Azure através do cloud shell!

![image](https://github.com/user-attachments/assets/c1239d17-167a-4461-b705-51032579b377)

No campo de Run on Agent, iremos fazer as seguintes alterações:

Antes 

![image](https://github.com/user-attachments/assets/c2d09702-f9dd-41e2-afea-314d0e3ff225)

Depois 

![image](https://github.com/user-attachments/assets/7c1da1a7-c794-474b-a94b-c81b73c698e9)

Em Deploy Azure Service, não alteramos nada ah não ser conferir se o "Package or folder" está com ".zip" no final!

![image](https://github.com/user-attachments/assets/331812b7-57b2-4715-8d69-5f914e29b08d)

Em Options fazemos a seguinte confecção!

![image](https://github.com/user-attachments/assets/5fab2151-c8c1-4f49-957d-00e618fecdaf)

Logo após, clicamos em "Save", adicionamos um comentário e em seguida clicamos em "Create release"!

![image](https://github.com/user-attachments/assets/a5608617-58a2-465e-b8ad-e3c5a51562fa)

Escreva um comentário se quiser e clique em "Create"!

![image](https://github.com/user-attachments/assets/d0c171b3-9cd4-4851-9ad5-1b4bea981ee7)

Depois clique em "Release 1"

![image](https://github.com/user-attachments/assets/6dbb809b-0e77-4fbd-a806-2dd7c06611a3)

## Clique em Logs e observe se todos obtiveram sucesso!

![image](https://github.com/user-attachments/assets/b7ca71da-0224-4018-9e84-ba1224bcc1ba)

![image](https://github.com/user-attachments/assets/adfd8e9f-e0e9-4b88-9879-75baf26c69ba)

# Passo 6 - Vamos fazer uma alteração na branch "Teste" e criar um PR para a branch "master"

Vamos voltar em "Repos", certifique-se de estar na branch "Teste", depois clique em "Files" e selecione um arquivo, por exemplo: appsettings.json. Logo após vamos clicar em "Edit" e adicionar um comentário.

![image](https://github.com/user-attachments/assets/56b7b17d-cfd7-495c-a36a-da240423c50d)

Logo após isso, vamos clicar em "Commit", adicionar um comentário e clicar em "Commit" novamente.]

Com isso realizamos uma alteração no código na branch "Teste".

## Agora vamos criar um PR (Pull Requests)

No menu lateral esquerdo na aba de "Repos" clique em "Pull requests".

![image](https://github.com/user-attachments/assets/d634f31a-d729-40b1-bb43-b193d9e33ed8)

Clique em "Create a pull request"

![image](https://github.com/user-attachments/assets/7bd05327-1b02-45a1-9d7c-a014c4539015)

Adicione um comentário e em "Work itens to link" selecione a nossa Task e depois clique em "Create".

![image](https://github.com/user-attachments/assets/2a37e609-05dd-4de4-b6f2-416c4ffa6ed8)

Clique em "Approve" e depois em "Complete".

![image](https://github.com/user-attachments/assets/cfc1ad60-d796-4283-beb5-7190816060df)

Nesta etapa so deixe o primeiro check box ticado e depois clique em "Complete merge".

Depois podemos voltar no arquivo "appsettings.json" so que dessa vez pela branch "master" e lá poderemos ver que a alteração que havíamos feito na branch "Teste" agora esta presente nela tambem.

![image](https://github.com/user-attachments/assets/86afdc62-ef0b-4a84-a1b4-13363465c4a2)

Se formos em "Pipelines", poderemos ver que o "Build" da nossa aplicação está rodando novamente.

![image](https://github.com/user-attachments/assets/1dd62e79-7450-4e3a-a63d-c885327a43c6)

Aguarde os logs e veja se todos obtiveram sucesso.

![image](https://github.com/user-attachments/assets/ff613dcd-0db7-4082-a7ac-8331409b97f0)

Agora vamos voltar em "Boards" e em "Recently updated" vamos selecionar "Recently completed" e assim veremos a nossa Task finalizada.

![image](https://github.com/user-attachments/assets/8abf08d5-6b7e-4d78-beba-9e95bdb9a83d)

# Passo 7 - Vamos adicionar o professor no projeto como administrador 

Para isso volte para a página inicial do "Azure DevOps" e clique em "Organization Settings" no canto inferior esquerdo.

![image](https://github.com/user-attachments/assets/2cc9bd4e-06c4-4c78-903d-97e15dc8bac2)

Depois clique em "Users" depois em "Add Users" e assim poderemos adicionar o novo membro da nossa organização.

![image](https://github.com/user-attachments/assets/948d0362-2f7b-4f7b-b995-ea87c73e2c98)

Selecione o membro novo, deixe o "Acess level" dele como "Basic" e por fim selecione o projeto em que ele terá acesso, no nosso caso o "EcoWatt". Por fim clique enm "Add".

# Passo 8 - Chegou a hora de vermos se tudo deu certo!

## Abra o serviço de aplicativo em que criamos na Azure e em seguida procure o domínio padrão!

![image](https://github.com/user-attachments/assets/9209e964-5ad0-4dd0-b8ee-b04f1ca3f647)

Adicione "/swagger" na URL!

![image](https://github.com/user-attachments/assets/fe5bf391-1e44-4ce4-8b7e-13562859f537)

## Nossa aplicação rodando!

![image](https://github.com/user-attachments/assets/31ce0566-0476-49a8-95d0-13fa77ac36af)

# Passo 9 - Abra o banco de dados SQL da Azure

Abra o aplicativo do banco de dados na nuvem e coloque a sua conexão.

![image](https://github.com/user-attachments/assets/e5efe991-6ab0-45f6-848c-a57fa35a045d)

# Passo 10 - Testando os endpoints

## Teste todos os endpoints das três tabelas que estão no Swagger!!!

Primeiro realize o POST e clique em "Execute"! Este método se encarrega de subir no banco de dados, novos eletrodomésticos, por exemplo:

![image](https://github.com/user-attachments/assets/f5f07c01-9716-4a79-9b32-aad5901d4192)

No banco ficará assim:

![image](https://github.com/user-attachments/assets/28958c41-5371-46a3-8b21-8ec580e36ba9)

Depois realize o GET geral e clique em "Execute"! Este método retorna todos os eletrodomésticos que estão cadastrados no banco, por exemplo:

![image](https://github.com/user-attachments/assets/9427cb80-d162-47a6-ba70-7f59b0c5aad3)

Depois realize o GET pelo ID e clique em "Execute"! Este método irá retornar o eletrodoméstico em que você está procurando pelo ID!

![image](https://github.com/user-attachments/assets/4bde0b02-7ef7-467d-9c81-057512ff7003)

Depois realize o UPDATE e clique em "Execute"! Insira o ID do eletrodoméstico em que deseja atualizar algum dado e altere!

![image](https://github.com/user-attachments/assets/2b4a0828-e9c5-4b66-9ae6-0586746ae802)

Alteramos o consumo de watts de 240 para 210!

No banco de dados poderemos ver que a alteração foi bem sucedida!

Realize o GET novamente para ver a alteração ou veja pelo banco de dados!

![image](https://github.com/user-attachments/assets/e5ad91eb-17d3-4c0a-b414-f969ab7936b9)

O acesso do banco de dados da aplicação esta no arquivo "appsettings.json"!

E por fim vamos realizar o DELETE pelo ID! Este método deleta um eletrodoméstico do banco.

![image](https://github.com/user-attachments/assets/bfc2e36a-fc4f-4292-97ac-b1e360909f2e)

O banco de dados por sua vez ficará sem o ID 7

![image](https://github.com/user-attachments/assets/9398d919-4e62-4f15-8b20-7b0aa3135f0c)

## Agora é só testar todos os endpoints das outras tabelas e ver a persistência dos dados no banco SQL da Azure!!!

## Scripts JSON do CRUD!

## Tabela Consumo

### GET

Retorna todos os consumos salvos no banco de dados!

### POST 

Cole o JSON e preencha os dados, menos o ID, pois é gerado automaticamente!

```
{
  "consumoId": 0,
  "data_Consumo": "2024-11-21T19:15:20.793Z",
  "hora_Consumo": 0,
  "quantidade_Watts": 0
}
```

### GET pelo ID 

Somente retorna o ID digitado!

### PUT

Digite o ID e altere o dado!

```
{
  "consumoId": 0,
  "data_Consumo": "2024-11-21T19:15:20.793Z",
  "hora_Consumo": 0,
  "quantidade_Watts": 0
}
```

### DELETE

Somente o número do ID!

## Tabela Eletrodoméstico

### GET 

Retorna todos os eletrodomésticos salvos no banco de dados!

### POST 

Cole o JSON e preencha os dados, menos o ID, pois é gerado automaticamente!

```
{
  "eletrodomesticosId": 0,
  "nome_Aparelho": "string",
  "valor_Consumo_Watts": 0,
  "categoria": "string",
  "modelo": "string"
}
```

### GET pelo ID

Somente retorna o ID digitado!

### PUT

Digite o ID e altere o dado!

```
{
  "eletrodomesticosId": 0,
  "nome_Aparelho": "string",
  "valor_Consumo_Watts": 0,
  "categoria": "string",
  "modelo": "string"
}
```

### DELETE

Somente o número do ID!

## Tabela Usuário

### GET 

Retorna todos os usuários salvos no banco de dados!

### POST 

Cole o JSON e preencha os dados, menos o ID, pois é gerado automaticamente!

```
{
  "usuarioId": 0,
  "nome": "string",
  "email": "user@example.com",
  "senha": "string",
  "cep": "string"
}
```

### GET pelo ID

Somente retorna o ID digitado!

### PUT

Digite o ID e altere o dado!

```
{
  "usuarioId": 0,
  "nome": "string",
  "email": "user@example.com",
  "senha": "string",
  "cep": "string"
}
```

### DELETE

Somente o número do ID!

## Cadastro

### POST 

Cole o JSON e preencha os dados, menos o ID, pois é gerado automaticamente!

```
{
  "usuarioId": 0,
  "nome": "string",
  "email": "user@example.com",
  "senha": "string",
  "cep": "string"
}
```

## Login

### POST 

Cole o JSON e preencha os dados!

```
{
  "email": "string",
  "senha": "string"
}
```

# No final o serviço de WebApp ficará assim na Azure!!!

![image](https://github.com/user-attachments/assets/0879124d-1814-44ca-b389-eb6bd21fad94)

# Banco de dados SQL da Azure pelo portal!

![image](https://github.com/user-attachments/assets/d5f00c62-df66-416f-ae0a-11c01b236a51)













# Extra!!!

## Criação de banco de dados SQL da Azure na nuvem. Essa é uma criação de banco de exemplo somente!!! Este banco de dados foi criado para a Sprint, mas eu segui o mesmo passo a passo para a criação do da GS, porém não gravei, pois a gravação da criação do banco de dados não era uma exigência da GS e ja podia realizar os requisitos da GS com ele criado!!!

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

No fim é so ir em "Cadeia de conexão" na menu lateral e pegar a string de conexão e colocar no seu projeto.

# SCRIPT SQL

```
-- DROP e criação da tabela Usuario
DROP TABLE IF EXISTS Usuario;
CREATE TABLE Usuario (
    UsuarioId NUMERIC NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Senha VARCHAR(100) NOT NULL,
    CEP CHAR(8) NOT NULL,
    CONSTRAINT Usuario_PK PRIMARY KEY (UsuarioId)
);

--CRUD
 
--Create
INSERT INTO Usuario (UsuarioId, Nome, Email, Senha, CEP) VALUES (1, 'João Silva', 'joao.silva@example.com', 'senha123', '12345678');
INSERT INTO Usuario (UsuarioId, Nome, Email, Senha, CEP) VALUES (2, 'Maria Oliveira', 'maria.oliveira@example.com', 'senha234', '87654321');
INSERT INTO Usuario (UsuarioId, Nome, Email, Senha, CEP) VALUES (3, 'Carlos Pereira', 'carlos.pereira@example.com', 'senha345', '11223344');
INSERT INTO Usuario (UsuarioId, Nome, Email, Senha, CEP) VALUES (4, 'Ana Souza', 'ana.souza@example.com', 'senha456', '44332211');
INSERT INTO Usuario (UsuarioId, Nome, Email, Senha, CEP) VALUES (5, 'Lucia Almeida', 'lucia.almeida@example.com', 'senha567', '55667788');

--Read
SELECT * FROM Usuario;
 
--Read pelo id
SELECT * FROM Usuario WHERE UsuarioId = 1;
SELECT * FROM Usuario WHERE UsuarioId = 2;
SELECT * FROM Usuario WHERE UsuarioId = 3;
SELECT * FROM Usuario WHERE UsuarioId = 4;
SELECT * FROM Usuario WHERE UsuarioId = 5;
 
--Read pelo nome
SELECT * FROM Usuario WHERE Nome = 'João Silva';
 
--Update no nome do usuário
UPDATE Usuario
SET Nome = 'João Santos Atualizado'
WHERE UsuarioId = 1;
 
UPDATE Usuario
SET Nome = 'Maria Oliveira Atualizado'
WHERE UsuarioId = 2;
 
UPDATE Usuario
SET Nome = 'Carlos Pereira Atualizado'
WHERE UsuarioId = 3;
 
UPDATE Usuario
SET Nome = 'Ana Souza Atualizado'
WHERE UsuarioId = 4;

UPDATE Usuario
SET Nome = 'Lucia Almeida Atualizado'
WHERE UsuarioId = 5;
 
--Update do email
UPDATE Usuario
SET Email = 'joao.santos@atualizado.com'
WHERE UsuarioId = 1;
 
--Delete pelo id
DELETE FROM Usuario WHERE UsuarioId = 1;
DELETE FROM Usuario WHERE UsuarioId = 2;
DELETE FROM Usuario WHERE UsuarioId = 3;
DELETE FROM Usuario WHERE UsuarioId = 4;
DELETE FROM Usuario WHERE UsuarioId = 5;

--Delete pelo email
DELETE FROM Usuario 
WHERE Email = 'joao.santos@atualizado.com';
 
-- DROP e criação da tabela Eletrodomésticos
DROP TABLE IF EXISTS Eletrodomesticos;
CREATE TABLE Eletrodomesticos (
    EletrodomesticosId NUMERIC NOT NULL,
    Nome_Aparelho VARCHAR(200) NOT NULL,
    Valor_Consumo_Watts NUMERIC NOT NULL,
    Categoria VARCHAR(100),
    Modelo VARCHAR(100),
    CONSTRAINT Eletrodomesticos_PK PRIMARY KEY (EletrodomesticosId)
);

--CRUD
 
--Create
INSERT INTO Eletrodomesticos (EletrodomesticosId, Nome_Aparelho, Valor_Consumo_Watts, Categoria, Modelo) VALUES (1, 'Geladeira', 500, 'Cozinha', 'Brastemp');
INSERT INTO Eletrodomesticos (EletrodomesticosId, Nome_Aparelho, Valor_Consumo_Watts, Categoria, Modelo) VALUES (2, 'Microondas', 800, 'Cozinha', 'Electrolux');
INSERT INTO Eletrodomesticos (EletrodomesticosId, Nome_Aparelho, Valor_Consumo_Watts, Categoria, Modelo) VALUES (3, 'Televisão', 150, 'Sala', 'Samsung');
INSERT INTO Eletrodomesticos (EletrodomesticosId, Nome_Aparelho, Valor_Consumo_Watts, Categoria, Modelo) VALUES (4, 'Ar Condicionado', 1200, 'Quarto', 'LG');
INSERT INTO Eletrodomesticos (EletrodomesticosId, Nome_Aparelho, Valor_Consumo_Watts, Categoria, Modelo) VALUES (5, 'Máquina de Lavar', 1000, 'Lavanderia', 'Consul');

--Read
SELECT * FROM Eletrodomesticos;
 
--Read pelo id 
SELECT * FROM Eletrodomesticos WHERE EletrodomesticosId = 1;
SELECT * FROM Eletrodomesticos WHERE EletrodomesticosId = 2;
SELECT * FROM Eletrodomesticos WHERE EletrodomesticosId = 3;
SELECT * FROM Eletrodomesticos WHERE EletrodomesticosId = 4;
SELECT * FROM Eletrodomesticos WHERE EletrodomesticosId = 5;
 
--Read pelo nome do aparelho
SELECT * FROM Eletrodomesticos WHERE Nome_Aparelho = 'Geladeira';

--Update do nome do aparelho
UPDATE Eletrodomesticos
SET Nome_Aparelho = 'Geladeira Inverter'
WHERE EletrodomesticosId = 1;
 
UPDATE Eletrodomesticos
SET Nome_Aparelho = 'Microondas Inverter'
WHERE EletrodomesticosId = 2;
 
UPDATE Eletrodomesticos
SET Nome_Aparelho = 'Televisão Inverter'
WHERE EletrodomesticosId = 3;
 
UPDATE Eletrodomesticos
SET Nome_Aparelho = 'Ar Condicionado Inverter'
WHERE EletrodomesticosId = 4;
 
UPDATE Eletrodomesticos
SET Nome_Aparelho = 'Máquina de LavarInverter'
WHERE EletrodomesticosId = 5;
 
--Update do valor do consumo
UPDATE Eletrodomesticos
SET Valor_Consumo_Watts = 400
WHERE EletrodomesticosId = 2;

--Delete pelo id
DELETE FROM Eletrodomesticos WHERE EletrodomesticosId = 1;
DELETE FROM Eletrodomesticos WHERE EletrodomesticosId = 2;
DELETE FROM Eletrodomesticos WHERE EletrodomesticosId = 3;
DELETE FROM Eletrodomesticos WHERE EletrodomesticosId = 4;
DELETE FROM Eletrodomesticos WHERE EletrodomesticosId = 5;
 
--Delete pelo modelo
DELETE FROM Eletrodomesticos 
WHERE Modelo = 'Brastemp';

-- DROP e criação da tabela Consumo
DROP TABLE IF EXISTS Consumo;
CREATE TABLE Consumo (
    ConsumoId NUMERIC NOT NULL,
    Data_Consumo DATE NOT NULL,
    Hora_Consumo NUMERIC NOT NULL,
    Quantidade_Watts NUMERIC NOT NULL,
    CONSTRAINT Consumo_PK PRIMARY KEY (ConsumoId)
);

--CRUD
 
--Create
INSERT INTO Consumo (ConsumoId, Data_Consumo, Hora_Consumo, Quantidade_Watts) VALUES (1, '2024-11-01', 12, 100);
INSERT INTO Consumo (ConsumoId, Data_Consumo, Hora_Consumo, Quantidade_Watts) VALUES (2, '2024-11-02', 15, 200);
INSERT INTO Consumo (ConsumoId, Data_Consumo, Hora_Consumo, Quantidade_Watts) VALUES (3, '2024-11-03', 18, 300);
INSERT INTO Consumo (ConsumoId, Data_Consumo, Hora_Consumo, Quantidade_Watts) VALUES (4, '2024-11-04', 20, 400);
INSERT INTO Consumo (ConsumoId, Data_Consumo, Hora_Consumo, Quantidade_Watts) VALUES (5, '2024-11-05', 22, 500);

--Read
SELECT * FROM Consumo;

--Read pelo id
SELECT * FROM Consumo WHERE ConsumoId = 1;
SELECT * FROM Consumo WHERE ConsumoId = 2;
SELECT * FROM Consumo WHERE ConsumoId = 3;
SELECT * FROM Consumo WHERE ConsumoId = 4;
SELECT * FROM Consumo WHERE ConsumoId = 5;

--Read pela data
SELECT * FROM Consumo WHERE Data_Consumo = '2024-11-05';

--Update na quantidade de watts
UPDATE Consumo
SET Quantidade_Watts = 230
WHERE ConsumoId = 1;
 
UPDATE Consumo
SET Quantidade_Watts = 345
WHERE ConsumoId = 2;
 
UPDATE Consumo
SET Quantidade_Watts = 100
WHERE ConsumoId = 3;
 
UPDATE Consumo
SET Quantidade_Watts = 550
WHERE ConsumoId = 4;
 
UPDATE Consumo
SET Quantidade_Watts = 690
WHERE ConsumoId = 5;

-- Update na data do consumo
UPDATE Consumo
SET Data_Consumo = '2024-11-04'
WHERE ConsumoId = 5;

--Delete pelo ID
DELETE FROM Consumo WHERE ConsumoId = 1;
DELETE FROM Consumo WHERE ConsumoId = 2;
DELETE FROM Consumo WHERE ConsumoId = 3;
DELETE FROM Consumo WHERE ConsumoId = 4;
DELETE FROM Consumo WHERE ConsumoId = 5; 

--Delete pela data
DELETE FROM Consumo 
WHERE Data_Consumo = '2024-11-01';

```

## Por fim podemos ver a criação do banco de dados dentro do grupo de recursos!!!

![Screenshot 2024-09-16 235457](https://github.com/user-attachments/assets/aa0130a9-09a8-4956-8485-881e12ebe4c2)

# Link do Azure DevOps:

https://dev.azure.com/RM551808/EcoWatt

# Link do Azure Repos:

https://dev.azure.com/RM551808/EcoWatt/_git/EcoWatt-GS.git

# Link GitHub:

https://github.com/ricardoyuuri/EcoWatt-GS

# Link do Vídeo:












































