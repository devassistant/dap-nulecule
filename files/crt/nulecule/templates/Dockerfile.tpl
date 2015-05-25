FROM projectatomic/atomicapp:dev

MAINTAINER {{ author }} <{{ email }}>

LABEL io.projectatomic.nulecule.specversion {{ specversion }}

ADD /Nulecule /Dockerfile README.md /application-entity/
ADD /artifacts /application-entity/artifacts
