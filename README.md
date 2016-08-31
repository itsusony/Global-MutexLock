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

# LICENSE

Copyright (C) itsusony. FreakOut
MIT LICENSE

# AUTHOR

itsusony <itsusony@fout.jp>
