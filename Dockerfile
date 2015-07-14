FROM evarga/jenkins-slave
MAINTAINER Andy Oakley <ao@ao.vc>

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get install -y git
RUN apt-get install -y emacs24-nox emacs-goodies-el

EXPOSE 22

CMD ["/usr/bin/sshd", "-D"]

