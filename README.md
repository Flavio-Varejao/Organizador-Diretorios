# Organizador de Diretórios  

## Verifica e organiza o diretório automaticamente  

Site:  
Autor:      Flávio Varejão  
Manutenção: Flávio Varejão  

Há dois scripts, o de verificação e o de execução. A seguir, mais informações sobre eles.  

<a name="ancora"></a>
- [Script de Verificação](#ancora1)
- [Script de Execução](#ancora2)

<a id="ancora1"></a>
## mvfile.sh  
>

Este script verifica se o crontab está configurado para executar o Organizador de Diretório.  

### Permissão  

Dê permissão de execução (primeiro acesso):  
```
    $ chmod +x mvfile.sh  
```

### Execução  

Neste exemplo o script vai perguntar se o usuário deseja configurar o tempo de execução.  
```
    $ ./mvfile.sh  
``` 

### Histórico: 

  v1.0 09/09/2020, Flávio:  
    - Início do programa  

### Testado em:  

  bash 5.0.17  
  
[Topo](#ancora)

<a id="ancora2"></a>
## auto-mvfile.sh  
>

Este script organiza um diretório automaticamente de acordo com o tempo configurado. Os arquivos serão movidos para os diretórios predeterminados pelo usuário.  

### Permissão  

Dê permissão de execução (primeiro acesso):  
```
    $ chmod +x auto-mvfile.sh  
```

### Execução  

Este script será utilizado no agendador de tarefas crontab e o tempo de execução será configurado pelo usuário.  

Altere os diretórios do script e/ou acrescente mais extensões de arquivos ao script.  

Editando o crontab:  
```
    $ crontab -e  
```
Exemplo de agendamento no Crontab:  
```
    00-59/30 * * * * /home/$USER/.auto-mvfile/auto-mvfile.sh  
```
Nesse exemplo, o diretório configurado no script será organizado todo dia a cada 30 minutos.  

### Histórico:  

  v1.0 09/09/2020, Flávio:
    - Início do programa 

### Testado em:  
  
  bash 5.0.17  

[Topo](#ancora)
