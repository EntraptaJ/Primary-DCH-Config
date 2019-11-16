docker build -t dch-setup ./Configurator

docker run -it -v $PWD/Config:/Config dch-setup