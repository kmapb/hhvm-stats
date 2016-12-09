HHVM_COMPAT_EXTENSION(
        stats
        com.cpp
        dcdflib.cpp
        fd_e_lgamma_r.cpp
        fd_e_log.cpp
        fd_k_cos.cpp
        fd_k_sin.cpp
        fd_w_lgamma.cpp
        ipmpar.cpp
        linpack.cpp
        php_stats.cpp
        randlib.cpp
)

HHVM_SYSTEMLIB(stats ext_stats.php)

