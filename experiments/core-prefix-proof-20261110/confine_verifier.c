#define _GNU_SOURCE
#include <errno.h>
#include <fcntl.h>
#include <linux/landlock.h>
#include <linux/filter.h>
#include <linux/seccomp.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/prctl.h>
#include <sys/syscall.h>
#include <sys/socket.h>
#include <unistd.h>

/* Trusted test harness: argv = ALLOWED_DIR DENIED_REPOSITORY_FILE CLIENT ARGS...
 * Only /nix/store and ALLOWED_DIR can be read/executed. No new filesystem writes
 * or sockets. stdout/stderr are already-open parent capture descriptors. */
static void fail(const char *where) { perror(where); exit(125); }
static void allow_dir(int ruleset, const char *path) {
    int fd=open(path,O_PATH|O_CLOEXEC);if(fd<0)fail("open allowed directory");
    struct landlock_path_beneath_attr rule={.allowed_access=LANDLOCK_ACCESS_FS_EXECUTE|LANDLOCK_ACCESS_FS_READ_FILE|LANDLOCK_ACCESS_FS_READ_DIR,.parent_fd=fd};
    if(syscall(SYS_landlock_add_rule,ruleset,LANDLOCK_RULE_PATH_BENEATH,&rule,0))fail("landlock_add_rule");
    close(fd);
}
int main(int argc,char **argv) {
    if(argc<5)return 125;
    int abi=syscall(SYS_landlock_create_ruleset,NULL,0,LANDLOCK_CREATE_RULESET_VERSION);
    if(abi<1)fail("landlock ABI unavailable");
    struct landlock_ruleset_attr rules={.handled_access_fs=
        LANDLOCK_ACCESS_FS_EXECUTE|LANDLOCK_ACCESS_FS_WRITE_FILE|LANDLOCK_ACCESS_FS_READ_FILE|
        LANDLOCK_ACCESS_FS_READ_DIR|LANDLOCK_ACCESS_FS_REMOVE_DIR|LANDLOCK_ACCESS_FS_REMOVE_FILE|
        LANDLOCK_ACCESS_FS_MAKE_CHAR|LANDLOCK_ACCESS_FS_MAKE_DIR|LANDLOCK_ACCESS_FS_MAKE_REG|
        LANDLOCK_ACCESS_FS_MAKE_SOCK|LANDLOCK_ACCESS_FS_MAKE_FIFO|LANDLOCK_ACCESS_FS_MAKE_BLOCK|
        LANDLOCK_ACCESS_FS_MAKE_SYM};
    int fd=syscall(SYS_landlock_create_ruleset,&rules,sizeof(rules),0);
    if(fd<0)fail("landlock_create_ruleset");
    allow_dir(fd,"/nix/store");allow_dir(fd,argv[1]);
    if(prctl(PR_SET_NO_NEW_PRIVS,1,0,0,0))fail("no_new_privs");
    if(syscall(SYS_landlock_restrict_self,fd,0))fail("landlock_restrict_self");close(fd);
    int probe=open(argv[2],O_RDONLY|O_CLOEXEC);
    if(probe>=0 || errno!=EACCES){if(probe>=0)close(probe);fprintf(stderr,"repository denial probe failed\n");return 125;}
    struct sock_filter filter[]={
        BPF_STMT(BPF_LD|BPF_W|BPF_ABS,offsetof(struct seccomp_data,nr)),
        BPF_JUMP(BPF_JMP|BPF_JEQ|BPF_K,SYS_socket,0,1),
        BPF_STMT(BPF_RET|BPF_K,SECCOMP_RET_ERRNO|EPERM),
        BPF_JUMP(BPF_JMP|BPF_JEQ|BPF_K,SYS_connect,0,1),
        BPF_STMT(BPF_RET|BPF_K,SECCOMP_RET_ERRNO|EPERM),
        BPF_JUMP(BPF_JMP|BPF_JEQ|BPF_K,SYS_bind,0,1),
        BPF_STMT(BPF_RET|BPF_K,SECCOMP_RET_ERRNO|EPERM),
        BPF_STMT(BPF_RET|BPF_K,SECCOMP_RET_ALLOW)};
    struct sock_fprog program={.len=sizeof(filter)/sizeof(filter[0]),.filter=filter};
    if(prctl(PR_SET_SECCOMP,SECCOMP_MODE_FILTER,&program))fail("seccomp");
    int sock=socket(AF_INET,SOCK_STREAM,0);
    if(sock>=0 || errno!=EPERM){if(sock>=0)close(sock);fprintf(stderr,"socket denial probe failed\n");return 125;}
    fprintf(stderr,"CONFINED: repository open=EACCES; sockets/connect/bind=EPERM; landlock ABI=%d\n",abi);
    execv(argv[3],&argv[3]);fail("exec verifier");
}
