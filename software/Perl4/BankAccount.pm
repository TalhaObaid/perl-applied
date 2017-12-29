package BankAccount;
use strict;
use warnings;


sub new
{
  my ($class, %attr) = @_;

  my $ref = \%attr;
  bless $ref, $class;
  return $ref;
}


sub balance
{
  my $self = shift;

  $self->{balance} = shift if @_;
  return $self->{balance};
}


sub owner
{
  my $self = shift;

  $self->{owner} = shift if @_;
  return $self->{owner};
}


sub account_number
{
  my $self = shift;

  $self->{account_number} = shift if @_;
  return $self->{account_number};
}


sub debit
{
  my ($self, $amount) = @_;

  $self->balance( $self->balance - $amount );
}


sub credit
{
  my ($self, $amount) = @_;

  $self->balance( $self->balance + $amount );
}


1;

__END__

=head1 NAME

  BankAccount - class implementing a bank account

=head1 SYNOPSIS

  use BankAccount;
  my $account = BankAccount->new( <attributes> );

=head1 ATTRIBUTES

=head2 balance

The initial balance.

=head2 account_number

The account number.

=head2 owner

The name of the account owner.

=head1 METHODS

Any of the attributes may be accessed via a method of the same name,
and set by passing an argument to that method.  The following
methods are also defined:

=head2 $account->credit( <amount> )

Add I<amount> to the balance.

=head2 $account->debit( <amount> )

Subtract I<amount> from the balance.

=cut
