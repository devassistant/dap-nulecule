Nulecule Assistants
===================

Copyright 2015 Tomas Radej <tradej@redhat.com>

This DAP (DevAssistant Package) contains assistants for working with
containerized apps using the [Nulecule
specification](https://github.com/projectatomic/nulecule).

To use these assistants, you need to install DevAssistant version 0.11.0 or
later. If you are running Fedora 22 Beta or Rawhide, you can get DevAssistant
by running:
```
dnf install devassistant
```

You can then install this DAP by running `da pkg install nulecule`. To update
this DAP, run `da pkg update nulecule`.

Contents of the DAP
-------------------

The creator assistant prepares a project directory with all necessary files.
These will be filled out based on information provided by the user. To find
more information about running this assistant, execute this in the terminal:
```
da create nulecule -h
```

The `extra > validate` assistant inspects the project's directory, determines
if all necessary files are in their place, and runs a Nulecule validator script
on the `Nulecule` file. To execute this assistant, run the following in your
app's directory:
```
da extra nulecule validate
```

Examples
--------

I want to create a Nulecule-compatible application called MyApp, with
Kubernetes support enabled by default. I then run:
```
da create nulecule -n MyApp --author "Tomas Radej" --email "tradej@redhat.com"
--license MIT --description "My first Nulecule App" --kubernetes
```

The assistant automatically creates directory contents in `./MyApp`, which will
then look like this:
```
.
├── artifacts
│   └── kubernetes
│       ├── MyApp-pod.yaml
│       └── MyApp-service.yaml
├── Dockerfile
├── LICENSE
├── Nulecule
└── README.md
```
and the Nulecule file like this:
```
---
specversion: 0.0.2
id: MyApp-app

metadata:
  name: MyApp
  appversion: 0.0.1a
  description: My first Nulecule App
  license:
    name: MIT
  authors: [ "Tomas Radej <tradej@redhat.com>" ]
  homepage: 

graph:
  - name: MyApp
    artifacts:
      kubernetes:
        - file://artifacts/kubernetes/MyApp-pod.yaml
        - file://artifacts/kubernetes/MyApp-service.yaml
```

**Note**: At the moment, the assistants don't check for dependencies because
some of them are not officially released and/or packaged yet. Similarly, the
validator script is bundled with this assistant now. All these problems will be
fixed in future versions and are not to stay.
