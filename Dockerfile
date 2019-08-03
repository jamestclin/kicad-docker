FROM ubuntu:18.10
LABEL Maintainer="James Lin<til002@ucsd.edu>"

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    aptitude \
    apt-utils \
    wget \
    subversion \
    cmake \
    make \
    swig \
    libboost-all-dev \
    libwxbase3.0-dev \
    libwxgtk3.0-dev \
    wx3.0-headers \
    wx-common \
    libglew-dev \
    libglm-dev \
    freeglut3-dev \
    libcairo2-dev \
    python-dev \
    python-pip \
    libcurl4-openssl-dev \
    liboce-ocaf-dev \
    libssl-dev \
    bison \
    flex

WORKDIR /tmp
RUN git clone --depth 1 -b master https://git.launchpad.net/kicad
WORKDIR ./kicad/scripting/build_tools
RUN chmod +x get_libngspice_so.sh
RUN ./get_libngspice_so.sh && ./get_libngspice_so.sh install
RUN ldconfig

WORKDIR /tmp/kicad
RUN cmake -DCMAKE_BUILD_TYPE=Release \
    -DKICAD_SCRIPTING=ON \
    -DKICAD_SCRIPTING_MODULES=ON \
    -DKICAD_SCRIPTING_PYTHON3=OFF \
    -DKICAD_SCRIPTING_WXPYTHON=OFF \
    -DKICAD_SCRIPTING_WXPYTHON_PHOENIX=OFF \
    -DKICAD_SCRIPTING_ACTION_MENU=ON \
    -DBUILD_GITHUB_PLUGIN=ON \
    -DKICAD_USE_OCE=OFF \
    -DKICAD_USE_OCC=OFF \
    -DKICAD_SPICE=ON \
    .
RUN make && make install
RUN ldconfig
