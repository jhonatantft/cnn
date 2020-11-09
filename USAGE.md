Ok, acho que enxugei o máximo possível sem prejudicar usabilidade:  

1. Usando o python 3.8.x, pois é a versão mais recente possível que ainda tem os pacotes do tensorflow, os pacotes não parecem existir ainda para o python 3.9.x

2. Fiz um volume mesmo, bem mais tranquilo, assim o contêiner, o código, e o dataset ficam bem separados.  

3. Tou usando o podman no Archlinux, mas em teoria é só trocar 'podman' por 'docker' que deve funcionar igual.  

4. Não sei dizer pq, mas algo no matplotlib mudou o
   plt.show(img), agora ele não aceita o argumento igual ao notebook 
   jupyter, não sei o motivo, mas ó omitindo o argumento dele ali (img) ele
   funciona normal  

5. Finalmente, como aproveitar do ambiente, ou clone
   o git do tatsuro (apos ele modificar la), ou cria uma pasta vazia e 
   copia e cola esses dois arquivos que vou mandar (Containerfile &o 
   cnn[..].py). Com isso, vc vai na primeira vez precisar contruir o 
   ambiente, é 100% automatizado, só que demora uns 3-5 minutos dependendo 
   da sua internet.  

6. Execução
   
   6.1: Entre na pasta que você criou ou clonou e rode o comando abaixo, esse é o demorado e vai baixar 1,2G de pacotes
   
   ```shell
   podman build --tag cnn-pipenv --squash -f Containerfile
   ```
   
   6.2: Então basta você expor a pasta atual (o código fonte) e a pasta do dataset (já baixada e extraida em algum lugar).  
   
   
   ```shell
   podman run -it --rm -v ../DATASETS/dataset-johnatan:/dataset \
                       -v .:/root/work cnn-pipenv
   
   ```

7.  Agora você deve estar dentro do container, você pode encontrar o dataset que você apontou anteriormente em /dataset a pasta atual (antes de chamar o podman run) em /root/work.

8. Para entrar venv, basta invocar `pipenv shell`

9. Pronto, agora basta chamar o arquivo com desejado, exemplo:
   
   ```shell
   python cnn_image_classification.py
   ```


