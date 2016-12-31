#############################################################
#
# motioneye
#
#############################################################

CONTROL_FREAK_SETUP_TYPE = distutils

DST_DIR = $(TARGET_DIR)/data/control-freak

define CONTROL-FREAK_INSTALL_TARGET_CMDS

    mkdir $(DST_DIR)
    # additional config modules
    cp package/motioneye/update.py $(DST_DIR)
    cp package/motioneye/ipctl.py $(DST_DIR)
    cp package/motioneye/servicectl.py $(DST_DIR)
    cp package/motioneye/watchctl.py $(DST_DIR)
    cp package/motioneye/extractl.py $(DST_DIR)

endef

$(eval $(call package,control-freak))
