FROM alpine
MAINTAINER Teng<icescaicemice@gmail.com>
LABEL version="0.1" description="python program flask hello world web home page example." organization="icesca.com"
ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY app/*.toml $APP_HOME/
COPY app/app.* $APP_HOME/
RUN chmod +x $APP_HOME/app.* \
  && apk add curl \
  && curl -LsSf https://astral.sh/uv/install.sh | sh \
  && source $HOME/.local/bin/env \
  && /root/.local/bin/uv sync
EXPOSE 5000
ENTRYPOINT [ "/app/app.sh" ]
