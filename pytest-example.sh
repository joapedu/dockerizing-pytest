# O Pytest é uma ferramenta poderosa que oferece recursos avançados para testes em Python.
# Ele cria o diretório 'tests' na raiz do projeto. Para rodar o teste escreva o comando em docker-entrypoint.sh

##
## Para rodar todos os testes da pasta tests
##
pytest 

##
## Para rodar um teste especifíco
##
pytest test/test_meu_codigo.py

##
## Para rodar todos uma função especifífca de um teste específico
##
pytest test/test_meu_codigo.py::test_minha_funcao