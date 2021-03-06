# ABSTRACT: Test::More diag() logging engine for Dancer2

package Dancer2::Logger::Diag;
use Moo;
use Test::More;
with 'Dancer2::Core::Role::Logger';

=head1 SYNOPSIS

=head1 DESCRIPTION

This logging engine uses L<Test::More>'s diag() to output as TAP comments.

This is very useful in case you're writing a test and want to have logging
messages as part of your TAP.


=method log

Use Test::More's diag() to output the log message.

=cut


sub log {
    my ($self, $level, $message) = @_;

    Test::More::diag($self->format_message($level => $message));
}

1;
