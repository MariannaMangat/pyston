# generate pyconfig.h

include(CheckIncludeFiles)
include(CheckTypeSizeof)

set(CMAKE_EXTRA_INCLUDE_FILES unordered_map)
set(CMAKE_REQUIRED_FLAGS -std=c++11)
check_type_sizeof("std::unordered_map<void*, void*>" SIZEOF_UNORDEREDMAP LANGUAGE CXX)
set(CMAKE_EXTRA_INCLUDE_FILES)
set(CMAKE_REQUIRED_FLAGS)

check_include_files(alloca.h HAVE_ALLOCA_H)
check_include_files(asm/types.h HAVE_ASM_TYPES_H)
check_include_files(curses.h HAVE_CURSES_H)
check_include_files(dirent.h HAVE_DIRENT_H)
check_include_files(dlfcn.h HAVE_DLFCN_H)
check_include_files(errno.h HAVE_ERRNO_H)
check_include_files(fcntl.h HAVE_FCNTL_H)
check_include_files(grp.h HAVE_GRP_H)
check_include_files(inttypes.h HAVE_INTTYPES_H)
check_include_files(langinfo.h HAVE_LANGINFO_H)
check_include_files(libintl.h HAVE_LIBINTL_H)
check_include_files(linux/netlink.h HAVE_LINUX_NETLINK_H)
check_include_files(linux/tipc.h HAVE_LINUX_TIPC_H)
check_include_files(memory.h HAVE_MEMORY_H)
check_include_files(ncurses.h HAVE_NCURSES_H)
check_include_files(netpacket/packet.h HAVE_NETPACKET_PACKET_H)
check_include_files(poll.h HAVE_POLL_H)
check_include_files(pthread.h HAVE_PTHREAD_H)
check_include_files(pty.h HAVE_PTY_H)
check_include_files(shadow.h HAVE_SHADOW_H)
check_include_files(signal.h HAVE_SIGNAL_H)
check_include_files(spawn.h HAVE_SPAWN_H)
check_include_files(stdint.h HAVE_STDINT_H)
check_include_files(stdlib.h HAVE_STDLIB_H)
check_include_files(string.h HAVE_STRING_H)
check_include_files(strings.h HAVE_STRINGS_H)
check_include_files(stropts.h HAVE_STROPTS_H)
check_include_files(sys/epoll.h HAVE_SYS_EPOLL_H)
check_include_files(sys/file.h HAVE_SYS_FILE_H)
check_include_files(sys/param.h HAVE_SYS_PARAM_H)
check_include_files(sys/poll.h HAVE_SYS_POLL_H)
check_include_files(sys/resource.h HAVE_SYS_RESOURCE_H)
check_include_files(sys/select.h HAVE_SYS_SELECT_H)
check_include_files(sys/socket.h HAVE_SYS_SOCKET_H)
check_include_files(sys/stat.h HAVE_SYS_STAT_H)
check_include_files(sys/statvfs.h HAVE_SYS_STATVFS_H)
check_include_files(sys/time.h HAVE_SYS_TIME_H)
check_include_files(sys/times.h HAVE_SYS_TIMES_H)
check_include_files(sys/types.h HAVE_SYS_TYPES_H)
check_include_files(sys/un.h HAVE_SYS_UN_H)
check_include_files(sys/utsname.h HAVE_SYS_UTSNAME_H)
check_include_files(sys/wait.h HAVE_SYS_WAIT_H)
check_include_files(sysexits.h HAVE_SYSEXITS_H)
check_include_files(term.h HAVE_TERM_H)
check_include_files(termios.h HAVE_TERMIOS_H)
check_include_files(unistd.h HAVE_UNISTD_H)
check_include_files(utime.h HAVE_UTIME_H)
check_include_files(wchar.h HAVE_WCHAR_H)

configure_file(from_cpython/Include/pyconfig.h.in from_cpython/Include/pyconfig.h)