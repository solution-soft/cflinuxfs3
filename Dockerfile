FROM cloudfoundry/cflinuxfs3

ENV  TM_SERVER_INFO	localhost:5777

ADD  ./tmfiles/lib /opt/ssstm/lib

RUN  chmod 0555 /opt/ssstm/lib/libssstm.so /opt/ssstm/lib/x86_64-linux-gnu/libssstm.so \
&&   chown -R root:root /opt/ssstm/lib \
&&   echo "/opt/ssstm/\$LIB/libssstm.so" > /etc/ld.so.preload

USER vcap
