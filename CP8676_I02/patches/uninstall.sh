echo $1
rootdirectory="$PWD"
#dirs="bionic system/sepolicy frameworks/av frameworks/base frameworks/native frameworks/opt/telephony frameworks/opt/net/ims hardware/libhardware packages/apps/Settings packages/services/Telecomm packages/services/Telephony system/netd system/core system/bt"
dirs="bionic frameworks/av frameworks/base frameworks/native system/core system/netd"
for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	#git apply --reverse $rootdirectory/device/coolpad/CP8298_I00/patches/$dir/*.patch
	git reset --hard
	git clean -f -d
	echo " "
done
echo "Changing to build directory..."
cd $rootdirectory
