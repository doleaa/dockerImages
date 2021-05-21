FROM troliator/test:clion-base

RUN DEBIAN_FRONTEND="noninteractive" && apt install -y software-properties-common && add-apt-repository ppa:pistache+team/unstable && apt update && apt install -y libpistache-dev
RUN apt-get update && apt-get install -y libboost-all-dev && apt-get clean

CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config_test_clion"]