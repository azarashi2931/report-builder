FROM pandoc/latex:2.13

RUN tlmgr update --self && tlmgr install luatexja haranoaji selnolig bussproofs

COPY ./build.sh /build.sh

ENTRYPOINT [ "/build.sh" ]
