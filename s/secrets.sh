DIRECTORY="/home/vlstv/secrets"
ROFI_CONFIG="/home/vlstv/.config/rofi"
if [ -d "$DIRECTORY" ]; then
    umount /dev/mapper/encrypted-partition
    cryptsetup luksClose /dev/mapper/encrypted-partition
    rm -rf "$DIRECTORY"
elif [ ! -d "$DIRECTORY" ]; then
    rofi -dmenu -password -i -no-fixed-num-lines -p "key" -config $ROFI_CONFIG | cryptsetup luksOpen /dev/sda4 encrypted-partition
    mkdir "$DIRECTORY"
    mount /dev/mapper/encrypted-partition "$DIRECTORY"
fi
