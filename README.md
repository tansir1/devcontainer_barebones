This repository has a bare bones example of how to setup a [devcontainer](https://code.visualstudio.com/docs/devcontainers/containers) in [VSCode](https://code.visualstudio.com/).  It does not showcase best practices, error handling, or performance tricks.

# Initial setup
1. Ensure Docker is install on your machine.
1. Clone the repository.
1. Copy `clone_root/.devcontainer/devcontainer.template.json` to `clone_root/.devcontainer/devcontainer.json`.  The template file is version controlled, the other is not. This allows the group to define common shared settings and still support local custom configurations per user.
1. In VSCode, open the folder containing your local clone of the repository.
1. In VSCode, use the Extensions menu to install the `Dev Containers` extension by Microsoft.
1. In VSCode, open the `Command Palette` (ctrl+shift+P or F1) and search for "dev containers."  Many results should appear.  We need to perform  "Dev Containers: Rebuild and Reopen in Container." Run this.  VScode will build your devcontainer (via Docker in the background) and then relaunch VSCode inside the container environment.  Now all commands in VSCode will run solely in the container environment.

# Day-to-day usage
* If you make changes to the devcontainer's dockerfile you'll need to rebuild the devcontainer in VScode like in the Initial Setup steps.
* The `File/Open Recent` menu in VSCode will now show `/path/to/your/host/clone_root` and `/path/to/your/host/clone_root @ someMachineName [Dev Container]`.  If you open the first option then everything will be run in your normal host machine environment.  If you open the 2nd option you will run everything in your devcontainer environment.
* If you want to add a new VSCode as a default plugin for your entire team in the devcontainer search for the extension in the Extensions menu. Along the top by the name of the plugin and the installations buttons, there is a cogwheel icon. Click that and select `Add to devcontainer.json` in the pop up menu. **NOTE: This only adjusts your local `devcontainer.json` for you and you alone. You must manually copy the new lines from your local `devcontainer.json` back into `devcontainer.template.json` for your change to be version controlled.**

