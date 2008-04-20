# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 8 };
use AudioFile::Info;
ok(1);

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $song = AudioFile::Info->new('t/test.ogg', 
                   { ogg => 'AudioFile::Info::Ogg::Vorbis::Header::PurePerl' });
ok(ref $song eq 'AudioFile::Info::Ogg::Vorbis::Header::PurePerl');
ok($song->title eq 'test');
ok($song->artist eq 'davorg');
ok($song->album eq 'none');
ok($song->track eq '00');
ok($song->year eq '2003');
ok($song->genre eq 'nonsense');
