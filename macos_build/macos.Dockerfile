FROM ubuntu:20.04

ADD macos_build/step1.sh /root/macos_build/step1.sh
RUN bash /root/macos_build/step1.sh

ADD macos_build/step2.sh /root/macos_build/step2.sh
RUN bash /root/macos_build/step2.sh

ADD macos_build/step3.sh /root/macos_build/step3.sh
RUN bash /root/macos_build/step3.sh

ADD macos_build/step4.sh /root/macos_build/step4.sh
RUN bash /root/macos_build/step4.sh

