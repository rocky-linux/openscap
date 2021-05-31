# ComplianceAsCode content

## What is this?

This is a content directory for Rocky Linux 8, and several tools for adding rocky8 content as new product for CimplianceAsCode. 

## What is ComplianceAsCode?

ComplianceAsCode is upstream for OSS SCAP contents [https://github.com/ComplianceAsCode](https://github.com/ComplianceAsCode). 
ComplianceAsCode content(old name "SCAP content") is including XML files, YAML, and so on for creating SCAP contents such as XCCDF or fixing scritp as BASH, Ansible.

## How to develop ComplianceAsCode content?

See [ComplianceAsCode Developer Guide](https://github.com/ComplianceAsCode/content/blob/master/docs/manual/developer_guide.adoc) in upsteam.

## Structure

Directories as follows
* content/rocky8 (it is including definition for rocky8 contents)
* content/shared/checks/oval/installed_OS_is_rocky8.xml (this is working for building OS check contents in XCCDF)
* tools/ (it is including tool for supporting Rocky8 in ComplianceAsCode content.

## How to use

1. Git clone ComplianceAsCode content from (Official GitHub)[https://github.com/ComplianceAsCode/content] to your working directory(ex. work).
2. cd work/content
3. copy content_for_supporting_rocky8 directory from this repo under work/content. (Such as work/content/content_for_supporting_rocky8)
4. run ./content_for_supporting_rocky8/tools/add_product_rocky8.sh

Then you'll be ready to compile Rocky8 contents.

## How to build rocky8 contents

1. cd to content/build (such as work/content/build)
2. run "cmake .."
3. run "make -j4 rocky8" 

Then you'll see several xml contents under build directory.
