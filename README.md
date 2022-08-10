# Year Movies

Projeto feito na versão 3.0.3 do flutter. Caso use FVM basta da um FVM install

## Breve explicação

#Alerta:
 - Antes de rodar o app, use o comando  **flutter pub run build_runner build --delete-conflicting-outputs** para gerar os códigos.

#Gerencia de estado e injetor de dependencia:
 - Para gerencia de estado usei o MOBX;
 - Injeção de dependencia foi usado o GetIT e o injectable, o injectable ele facilita a usabilidade do getIt com geração de código;
 
#Listagem de dados:
  Nesse projeto, não usei o Listview.builder e sim Sliver. o ListView.builder quando se usa o "shrinkwrap: true", pode causar muitos problemas de desempenho, por conta de está sempre calculando o tamanho da lista;
  
#Toast:
  Nesse App usei uma soluçãozinha que fiz para mostrar mensagens de erro, usando event bus para notificar e mostrar a notificaçãozinha

