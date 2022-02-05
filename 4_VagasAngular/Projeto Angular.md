**Projeto Angular**

1. Criar projeto : **ng new nome projeto**

2. testar carregamento : **ng serve**

3. fechar sessão ng serve  : **crtl + c**

4. Abrir pasta do projeto no :  **VSCode**

5. Criar o banco de dados de vagas em arquivo JSon : **vagas-db.json**

6. em src/app/index.html : ajustar idioma  -> <html lang="pt-br"> ajustar titulo <title>Seu Titulo</title>

7. Criar pasta para armazenar imagens de fotos : src/assets/img/vagas

8. Inserir 3 imagens na pasta src/assets/img/vagas . Manter nome das imagens e tipo igual ao definido no arquivo JSon

9. Limpar conteúdo do arquivo :    **src\app\app.component.html**

10. Instalar bootstrap. Via terminal e dentro da  pasta de sua aplicação rodar : **npm install bootstrap**

11. Verificar se bootstrap esta instalado correto. No projeto  deve existir a pasta :  **node_modules\bootstrap**

12. Ajustar para chamar o Bootstrap no arquivo : angular.json , setor styles e scripts

          "root": "",
          "sourceRoot": "src",
          "prefix": "app",
          "architect": {
            "build": {
              "builder": "@angular-devkit/build-angular:browser",
              "options": {
                "outputPath": "dist/lh-angular",
                "index": "src/index.html",
                "main": "src/main.ts",
                "polyfills": "src/polyfills.ts",
                "tsConfig": "tsconfig.app.json",
                "assets": [
                  "src/favicon.ico",
                  "src/assets"
                ],
                "styles": [
                  "node_modules/bootstrap/dist/css/bootstrap.min.css",
                  "src/styles.css"
                ],
                "scripts": [
                  "node_modules/bootstrap/dist/js/bootstrap.min.js"
                ]
              },



arquivos criados / alterados 



app/models/Vagas.model.ts

app/mural-vagas

​	mural-vagas.component.html

​	mural-vagas.component.ts -> selector: 'app-mural-vagas',

app.component.html - colocar <app-mural-vagas></app-mural-vagas>

criar serviços -> vagas.service.spec.ts  e  vagas.service.ts

alterar ->  vagas.service.ts  /  app.module.ts

alterar -> mural-vagas.component.ts

alterar -> mural-vagas.component.html

instalar Json server npm install -g json-server

rodar servidor -> json-server --watch vagas-db.json

alterar -> mural-vagas.component.css



criar -> app-routing.module.ts   ( ng g m app-routing)

alterar -> app.module.ts

alterar -> app-routing.module.ts

criar cadastro vagas / menu / rodape -> ng g c painel-vagas

alterar -> menu.component.html

alterar -> app.component.html

alterar -> rodape.component.html

alterar -> app.module.ts

alterar -> vagas.service.ts

alterar -> painel-vagas.component.ts

