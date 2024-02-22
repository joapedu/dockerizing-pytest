ARG PYTHON_VERSION=3.8-alpine
ARG TIMEZONE="America/Fortaleza"

FROM python:${PYTHON_VERSION} as builder

LABEL João Eduardo Braga <joaoeduardobraga2@gmail.com>

##
## Define argumentos e variáveis de ambiente
##
ENV MY_USER="dockerizing-pytest" \
    MY_GROUP="dockerizing-pytest" \
    MY_UID="1000" \
    MY_GID="1000" \
    PYTHONUNBUFFERED=1 \
    TZ=${TIMEZONE}

##
## Configura o timezone do servidor
##
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

##
## Define o diretório de trabalho
##
WORKDIR /code

##
## Copia e instala as dependências Python
##
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


FROM python:${PYTHON_VERSION}

##
## Copia o timezone configurado
##
COPY --from=builder /etc/localtime /etc/localtime
COPY --from=builder /etc/timezone /etc/timezone

##
## Copia o diretório de trabalho e as dependências instaladas
##
COPY --from=builder /code /code

##
## Copia o script docker-entrypoint.sh
##
COPY ./docker-entrypoint.sh /docker-entrypoint.sh

##
## Dá permissão [de execução] ao script
##
RUN chmod +x docker-entrypoint.sh

##
## Define o ponto de entrada como o script docker-entrypoint.sh
##
ENTRYPOINT ["/docker-entrypoint.sh"]

##
## Expor a porta
##
EXPOSE 5000
