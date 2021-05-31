# Rocky8 files and tools
These are files for supporting Rocky8 for ComplianceAsCode content. 'Files' directory contain files for modifying ComplianceAsCode [content](https://github.com/ComplianceAsCode/content). 'Tools' directory contain script for modifying ComplianceAsCode content to support Rocky8.

## Rocky8 product information.
Just for now, we use following Name/Values as Rocky8 product informtation(content/rocky8/product.yml)

1. fingerprints vaules. For Redhat, we can check it on [https://access.redhat.com/security/team/key](https://access.redhat.com/security/team/key)
```pkg_release: "PKG_RELASE"
 pkg_version: "PKG_VERSION"
 aux_pkg_release: "AUX_PKG_RELEASE"
 aux_pkg_version: "AUX_PKG_VERSION"
 
 release_key_fingerprint: "RELEASE_KEY_FINGERPRINT"
 auxiliary_key_fingerprint: "AUXILIARY_KEY_FINGERPRINT"
```

2. OVAL Feed URL. If we will use completely same as RHEL8 OVAL, we might not be need to change it.
```
oval_feed_url: "https://www.redhat.com/security/data/oval/com.redhat.rhsa-RHEL8.xml"
```

3. CPE. CPE name is in /etc/os-release and /etc/system-release-cpe.
```
name: "cpe:/o:rocky:rocky_linux:8"
```
