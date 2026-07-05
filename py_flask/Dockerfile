FROM alpine
MAINTAINER Teng<icescaicemice@gmail.com>
ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY app/*.toml $APP_HOME/
COPY app/app.* $APP_HOME/
RUN chmod +x $APP_HOME/app.*
RUN apk add curl
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
RUN source $HOME/.local/bin/env
RUN cd $APP_HOME
RUN /root/.local/bin/uv sync
EXPOSE 5000
ENTRYPOINT [ "/app/app.sh" ]
