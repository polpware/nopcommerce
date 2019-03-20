# Some common definitions 
VERBOSE := 
CP      := $(VERBOSE)cp
CPFLAGS := -r
RM	:= $(VERBOSE)rm
RMFLAGS := -rf 
ECHO	:= echo
FIND    := find
GREP    := grep
SED     := sed
GIT     := git
MKDIR   := mkdir
MKDIRFLAGS   := -p -v
GAWK := gawk
AWK := awk
SED := sed
GITPUSH := $(VERBOSE)git push
GITPULL := $(VERBOSE)git pull
GITSTATUS := $(VERBOSE)git status
GITDIFF := $(VERBOSE)git diff
GITCHECKOUT := $(VERBOSE)git checkout
PUSHFLAGS := 
PULLFLAGS := 
STATUSFLAGS := -uno
DIFFFLAGS := --color -w

SHELL	= /bin/sh

# Script Path
AWKScriptPath := ~/scripts/awk
# Script definition
ReplacePackagePathScript := replace-package-path.awk
ReplacePackageVersionScript := replace-package-version.awk
ReplaceProjectReferenceScript := replace-project-reference.awk

# Some common dirs 
ObjDir := obj/Debug
BinDir := bin

# Solution dir
SOLUTION_DIR := ~/nxdrive_workbench
SOLUTION_SRC_DIR := $(SOLUTION_DIR)/src
SOLUTION_PACKAGE_DIR := $(SOLUTION_DIR)/WorkSolution/packages
# Start up project
WEB_APP_DIR := $(SOLUTION_SRC_DIR)/nxdrive/Presentation/NXdrive.Web
# Web content dir
content_dir := $(WEB_APP_DIR)/Content
script_dir := $(WEB_APP_DIR)/Scripts

grunt_prereq_files := gruntfile.js package.json

.SILENT :
