FROM debian:13-slim

ARG PKT_DIR="/data"
ARG PKT_USER="painkiller"

ENV PKT_DIR=${PKT_DIR}

RUN useradd -m -s /bin/bash "${PKT_USER}"

COPY --chmod=755 --chown=${PKT_USER}:${PKT_USER} bin/* /usr/local/bin/

RUN mkdir -p "${PKT_DIR}" && chown -R "${PKT_USER}:${PKT_USER}" "${PKT_DIR}"

WORKDIR ${PKT_DIR}

USER ${PKT_USER}

ENTRYPOINT ["PainTools_x64"]