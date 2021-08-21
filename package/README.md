# Overview

- 0.1.54 - parity project with RHEL8, bug-for-bug copy
- main - builds from https://github.com/ComplianceAsCode/content/


# Testing


## Local Scan

**DISA STIG**


oscap xccdf eval --report unit-test-disa-scan.html --profile disa /usr/share/xml/scap/ssg/content/ssg-rl8-ds.xml


**CIS**

oscap xccdf eval --report unit-test-cis-scan.html --profile cis /usr/share/xml/scap/ssg/content/ssg-rl8-ds.xml
