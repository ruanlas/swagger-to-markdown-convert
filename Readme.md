# swagger-to-markdown-convert
Este repositório é uma dockerização do projeto https://www.npmjs.com/package/swagger-markdown.

## Convertendo a documentação de swagger para markdown
Para converter a documentação em swagger para markdown, basta executar o seguinte comando na raíz do projeto (OBS: É necessário ter o docker instalado na máquina)

```
docker run --rm -it -v $(pwd):/work ruanlas/swagger-to-markdown-convert:v1.0.0 swagger-markdown -i <path_to_swagger.yaml> -o <path_to_file.md_destiny>
```
