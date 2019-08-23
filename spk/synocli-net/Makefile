SPK_NAME = synocli-net
SPK_VERS = 1.1
SPK_REV = 3
SPK_ICON = src/synocli-net.png

include ../../mk/spksrc.common.mk

DEPENDS = cross/screen cross/tmux cross/nmap cross/sshfs
#ifneq ($(findstring $(ARCH),$(PPC_ARCHES)),$(ARCH))
#DEPENDS += cross/fritzctl
#endif

# Requirement for Mosh
#SPK_DEPENDS = "Perl>=5.14"

MAINTAINER = ymartin59,divx118
DESCRIPTION = 'SynoCli Network Tools (lite) provides a set of small command-line utilities: screen, tmux, nmap, sshfs. Credits to Sebastian Schmidt \(publicarray\) for icons'
DISPLAY_NAME = 'SynoCli Network Tools (lite)'
STARTABLE = no
CHANGELOG = "3. Build sshfs 2.10 with fuse updated to v2.9.9"

HOMEPAGE   = https://github.com/SynoCommunity/spksrc/wiki/FAQ-SynoCliNet
LICENSE    = Mixed

SERVICE_SETUP = src/service-setup.sh

include ../../mk/spksrc.spk.mk
