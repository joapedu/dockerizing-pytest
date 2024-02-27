# Running *pytest* with docker

### Requirements
- [Docker](https://www.docker.com/products/docker-desktop/)

### Execution
- I used Docker Compose to manage and run containers with pytest.
```sh
docker compose build # Build the image
```
  - Once the image is created, it will not be necessary to create the build again, as it is a single environment.
> After generating the image, run docker compose separately.
```sh
docker compose up -d # Start container in background
```
- Lastly, launch the container interactively.
```sh
docker compose exec lambda sh
```
- After joining the interactive session, you can run the pytest command or any other command you want.
```sh
pytest -m slow --pdb
```
> There is an example file with unit and batch test commands [*pytest.zsh*](./pytest-example.sh)

#### CONTRIBUTING
> See [CONTRIBUTING.md](./CONTRIBUTING.md)

#### LICENSE
> See [LICENSE](./LICENSE)

#### CHANGELOG
> See [CHANGELOG.md](./CHANGELOG.md)
