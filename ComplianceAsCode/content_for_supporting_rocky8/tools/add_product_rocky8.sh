#!/bin/sh

### copy rocky8 directory under new directory
cp -pr ./content_for_supporting_rocky8/files/rl8 ./products/ || exit 1
### copy several files
#cp -pr ./content_for_supporting_rocky8/files/installed_OS_is_rocky8.xml ./shared/checks/oval/
cp -pr ./content_for_supporting_rocky8/files/installed_OS_is_rl8.xml ./shared/checks/oval/
cp -pr ./content_for_supporting_rocky8/files/disa-stig-rl8-v1r3-xccdf-manual.xml ./shared/references/

### patch to several files for supporting rocky8
patch -p1 < ./content_for_supporting_rocky8/files/diff_content_for_supporting_rocky8

### add rocky8 to several XML definition files.
find ./linux_os -type f -exec sed -i '/prodtype:/s/rhel8/rhel8,rl8/g' {} \;
find ./tests -type f -exec sed -i '/prodtype:/s/rhel8/rhel8,rl8/g' {} \;
find ./linux_os -type f -exec sed -i '/platform/s/multi_platform_rhel/multi_platform_rhel,multi_platform_rocky/g' {} \;
find ./shared -type f -exec sed -i '/platform/s/multi_platform_rhel/multi_platform_rhel,multi_platform_rocky/g' {} \;
find ./shared -type f -exec sed -i '/platform/s/Red Hat Enterprise Linux 8/Red Hat Enterprise Linux 8,multi_platform_rocky/g' {} \;
