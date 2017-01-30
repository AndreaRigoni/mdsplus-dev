


AC_DEFUN([AX_GITIGNORE_ADD],[
  AS_VAR_SET_IF([CONFIG_GIT_IGNORE],,AS_VAR_SET([CONFIG_GIT_IGNORE]))
  AS_VAR_APPEND([CONFIG_GIT_IGNORE],["
$1"])
])

AC_DEFUN([AX_GITIGNORE_ADD_ALLSUBDIR],[
  AX_GITIGNORE_ADD("**/"[]$1)
])


AC_DEFUN([AX_GITIGNORE_SUBST],[
  AC_PROG_SED
  AS_VAR_SET([CONFIG_GIT_IGNORE],[$(echo ${CONFIG_GIT_IGNORE} | sed -e"s/  */ /g")])
  AC_SUBST([CONFIG_GIT_IGNORE],["${CONFIG_GIT_IGNORE// /'
'}"])
])
