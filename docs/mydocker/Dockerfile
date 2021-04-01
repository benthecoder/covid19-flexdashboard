# FROM rocker/r-ver:4.0.2
# base image from https://hub.docker.com/r/rocker/shiny
FROM rocker/shiny:latest

# set label
LABEL maintainer="Benedict Neo <benthecoder07@gmail.com>"

# install debian packages
RUN apt-get update && apt-get install -y \
    git \
    pkg-config \
    pandoc \
    libpng-dev \
    libssl-dev \
    libfontconfig1-dev \
    libudunits2-dev \
    libcurl4-openssl-dev \
    libgdal-dev \
    gdal-bin

# installing R packages
RUN mkdir packages
COPY install_packages.R packages/
RUN Rscript packages/install_packages.R

RUN git --version
