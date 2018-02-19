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
GITPUSH := $(VERBOSE)git push
GITPULL := $(VERBOSE)git pull
GITSTATUS := $(VERBOSE)git status
GITDIFF := $(VERBOSE)git diff
GITCHECKOUT := $(VERBOSE)git checkout
GITTAG := $(VERBOSE)git tag -a 
PUSHFLAGS := 
PULLFLAGS := 
STATUSFLAGS := -uno
DIFFFLAGS := --color -w
TAGFLAGS := -m 
DEPLOYDIR := ~/desktop/tmp/wwwroot


SHELL	= /BIN/SH

# SOME COMMON DIRS 
OBJDIR := OBJ
BINDIR := BIN

LIBRARY_DIR := Libraries
WEBDIR := Presentation/Nop.Web
ADMINDIR := Presentation/Nop.Web/Administration

NEW_TAG := v3.7
NEW_TAG_MSG := 3.7
CHECKOUT_COMMIT := tags/v3.7 

.SILENT :
