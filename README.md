# NAME

Global::MutexLock - A xs module to give perl global mutex-lock between crons or web-app's workers

# SYNOPSIS

    use Global::MutexLock;

# DESCRIPTION

Global::MutexLock is a module to create os-level global mutex-lock for perl.  
You can lock anything between process to others, or web-applications, or threads,cron.  

Mutex-lock's pointer is stored in System V IPC.  
You should let the process to know the IPC-ID for locking.  

If you want to delete IPC-ID by yourself, please use 'ipcs','ipcrm'.  

# USAGE

\# 0. use Global::MutexLock;  
use Global::MutexLock qw(mutex\_create mutex\_destory mutex\_lock mutex\_unlock);   

\# 1. create a new global mutex id  
\# tips: you can create an id, and use it in different crons or apps  
my $mutex\_id = mutex\_create();  

\# 2. take a lock  
unless (mutex\_lock($mutex\_id)) {  
    warn "lock error";  
}  

\# 3. do something...  
\# ...  

\# 4. release lock  
unless (mutex\_unlock($mutex\_id)) {  
    warn "release lock error";  
}  

\# 5. destory mutex lock id  
\# you must do it. otherwise the IPC id will be leaved in system.  
\# or you can rm it by \`ipcrm -m IPCID\`  
\# you can find IPCID by \`ipcs\`  
mutex\_destory($mutex\_id);  

# LICENSE

Copyright (C) itsusony. FreakOut.  
MIT LICENSE

# AUTHOR

itsusony <itsusony@fout.jp>
