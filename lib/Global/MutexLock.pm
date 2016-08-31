package Global::MutexLock;
use 5.008001;
use strict;
use warnings;
use Exporter 'import';

our $VERSION = "0.021";

our @EXPORT_OK = qw( 
    mutex_create
    mutex_lock
    mutex_unlock
    mutex_destory
);

use XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

1;
__END__

=encoding utf-8

=head1 NAME

Global::MutexLock - A xs module to give perl global mutex-lock between crons or web-app's workers

=head1 SYNOPSIS

    use Global::MutexLock;

=head1 DESCRIPTION

Global::MutexLock is a module to create os-level global mutex-lock for perl.
You can lock anything between process to others, or web-applications, or threads,cron.
  
Mutex-lock's pointer is stored in System V IPC.
You should let the process to know the IPC-ID for locking.
  
If you want to delete IPC-ID by yourself, please use 'ipcs','ipcrm'.

=head1 LICENSE

Copyright (C) itsusony. FreakOut
MIT LICENSE

=head1 AUTHOR

itsusony <itsusony@fout.jp>

=cut

