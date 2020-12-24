# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,multi_platform_ol,multi_platform_rocky


{{{ bash_dconf_settings("org/gnome/login-screen", "disable-user-list", "true", "gdm.d", "00-security-settings") }}}
{{{ bash_dconf_lock("org/gnome/login-screen", "disable-user-list", "gdm.d", "00-security-settings-lock") }}}
