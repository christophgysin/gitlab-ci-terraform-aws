FROM christophgysin/gitlab-ci-terraform:latest

RUN mkdir -p /aws && \
    apk add groff less python py-pip && \
    pip install awscli && \
    apk --purge del py-pip && \
    rm /var/cache/apk/*
