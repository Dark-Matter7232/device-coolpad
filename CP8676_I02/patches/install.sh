echo $1
rootdirectory="$PWD"
dirs="bionic frameworks/av frameworks/base frameworks/native system/core system/netd packages/apps/Settings hardware/libhardware"
for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/coolpad/CP8676_I02/patches/$dir/*.patch
	echo " "
done
echo "Changing to build directory..."
cd $rootdirectory
export BUILD_HOST="ghost"
export BUILD_USER="sougata"