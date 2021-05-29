FROM freqtradeorg/freqtrade:develop

USER root
RUN apt-get install gettext-base


USER ftuser
COPY run.sh /freqtrade/run.sh
COPY Botfile /freqtrade/Botfile
COPY user_data /freqtrade/user_data

USER ftuser
ENTRYPOINT ["./run.sh"]
