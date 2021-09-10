project('com.github.eldhrimer.binder', 'vala', 'c')

add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')

subdir('src')
subdir('data')
subdir('po')

meson.add_install_script('meson/post_install.py')


