package Global::MutexLock;
use 5.008001;
use strict;
use warnings;
use Exporter 'import';

our $VERSION = "0.02";

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

Global::MutexLock - It's new $module

=head1 SYNOPSIS

    use Global::MutexLock;

=head1 DESCRIPTION

Global::MutexLock is ...

=head1 LICENSE

Copyright (C) itsusony.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

itsusony E<lt>itsusony@fout.jpE<gt>

=cut

