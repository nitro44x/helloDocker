FROM gcc:9.1
COPY . /HelloWorld
WORKDIR /HelloWorld
ENV PATH="/usr/bin/cmake/bin:/install/bin:${PATH}"
RUN chmod u+x ./cmake-3.14.4-Linux-x86_64.sh \
      && mkdir /usr/bin/cmake \
      && ./cmake-3.14.4-Linux-x86_64.sh --skip-license --prefix=/usr/bin/cmake \
      && rm ./cmake-3.14.4-Linux-x86_64.sh
RUN mkdir build \
    && cd build \
    && cmake .. -DCMAKE_INSTALL_PREFIX=/install \
    && cmake --build . --target install
CMD ["HelloWorld"]