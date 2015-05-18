FROM projectatomic/atomicapp:dev

MAINTAINER {{ author }} <{{ email }}>

ADD /Nulecule /Dockerfile README.md /application-entity/
ADD /artifacts /application-entity/artifacts
