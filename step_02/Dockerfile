From test_step01

RUN apt-get install -y build-essential zlib1g-dev libtinfo-dev man xz-utils curl cargo cmake vim ninja openssh-server

ADD /rust-1.34.1-x86_64-unknown-linux-gnu.tar.gz /tmp
RUN /tmp/rust-1.34.1-x86_64-unknown-linux-gnu/install.sh && rm -rf /tmp/rust-1.34.1-x86_64-unknown-linux-gnu
#RUN curl -O https://static.rust-lang.org/dist/rust-1.34.1-x86_64-unknown-linux-gnu.tar.gz && tar xzvf rust-1.34.1-x86_64-unknown-linux-gnu.tar.gz && ./rust-1.34.1-x86_64-unknown-linux-gnu/install.sh && rm -rf rust-1.34.1-x86_64-unknown-linux-gnu

