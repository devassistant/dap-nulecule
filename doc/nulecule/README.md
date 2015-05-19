Nulecule Assistants
===================

Copyright 2015 Tomas Radej <tradej@redhat.com>

This DAP contains assistants for working with containerized apps using the
[Nulecule specification](https://github.com/projectatomic/nulecule).

The creator assistant prepares a project directory with all necessary files.
These will be filled out based on information provided by the user.

The extra > validate assistant inspects the project's directory, finding if all
necessary files are in their place, and run a Nulecule validator script on the
Nulecule file.

**Note**: At the moment, the assistants don't check for dependencies because
some of them are not officially released and/or packaged yet. Similarly, the
validator script is bundled with this assistant now. All these problems will be
fixed in future versions and are not to stay.
