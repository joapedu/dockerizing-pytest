# Execução do *pytest* com docker

### Requisitos
- [Docker](https://www.docker.com/products/docker-desktop/)

### Execução
- Utilizei docker compose para gerenciamento e execução dos containers com pytest.
  - Mude o arquivo [*docker-entrypoint.sh*](./docker-entrypoint.sh) com o comando pytest a ser realizado
> Existe um arquivo de exemplo com comandos de testes unitários e em lote [*pytest.zsh*](./pytest-example.sh)
- Após determinar qual será o teste a ser realizado, rode o docker compose
```sh
docker compose up
```

#### CONTRIBUTING
> See [CONTRIBUTING.md](./CONTRIBUTING.md)

#### LICENSE
> See [LICENSE](./LICENSE)

#### CHANGELOG
> See [CHANGELOG.md](./CHANGELOG.md)