echo "*** WI-FI chip ID is not specified in /persist/wlan_chip_id **"
echo "*** Use the default WCN driver.                             **"
setprop wlan.driver.ath 0 
# Populate the writable driver configuration file
if [ ! -e /data/misc/wifi/WCNSS_qcom_cfg.ini ]; then
    if [ -f /persist/WCNSS_qcom_cfg.ini ]; then
        cp /persist/WCNSS_qcom_cfg.ini /data/misc/wifi/WCNSS_qcom_cfg.ini
    else
        cp /system/etc/wifi/WCNSS_qcom_cfg.ini /data/misc/wifi/WCNSS_qcom_cfg.ini
    fi
    chown system:wifi /data/misc/wifi/WCNSS_qcom_cfg.ini
    chmod 660 /data/misc/wifi/WCNSS_qcom_cfg.ini
fi

# The property below is used in Qcom SDK for softap to determine
# the wifi driver config file
setprop wlan.driver.config /data/misc/wifi/WCNSS_qcom_cfg.ini

# Run audio init script
/system/bin/sh /system/etc/init.qcom.audio.sh "$target" "$btsoc"
