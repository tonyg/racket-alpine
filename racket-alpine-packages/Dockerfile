FROM alpine:3.8
RUN apk update && apk upgrade
RUN apk add alpine-sdk
RUN adduser -D build
RUN passwd -d build
RUN echo "build ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN su - build /bin/sh -c 'git config --global user.name "Tony Garnock-Jones"'
RUN su - build /bin/sh -c 'git config --global user.email "tonygarnockjones@gmail.com"'
RUN echo 'PACKAGER="Tony Garnock-Jones <tonygarnockjones@gmail.com>"' >> /etc/abuild.conf
RUN addgroup build abuild
RUN su - build /bin/sh -c 'ln -sf /home/build/racket-alpine/dot-abuild /home/build/.abuild'
CMD su - build /bin/sh -c 'cd racket-alpine/racket-alpine-packages; ./build.sh'
