#! /usr/bin/env perl
use strict;
use warnings;
use Time::HiRes qw/usleep/;
use Global::MutexLock qw(mutex_create mutex_destory mutex_lock mutex_unlock);

my $mutex_id = $ARGV[0] // 0;
die "usage: ./02_sub_cron.pl LOCKID\n" if (!$mutex_id || $mutex_id !~ /^\d+$/);

mutex_destory($mutex_id);
