use List::Util qw(reduce);
use strict;

package User;

sub new {
    my ($class, $name, $age, $salary) = @_;
    my $self = {
        name   => $name,
        age    => $age,
        salary => $salary,
    };
    bless $self, $class;
    return $self;
}

package main;

my @users = (
    User->new("Alice",   25, 15000),
    User->new("Bob",     30, 18000),
    User->new("Charlie", 22, 16000),
    User->new("David",   28, 15000),
    User->new("Eva",     35, 25000),
    User->new("Frank",   40, 20000),
    User->new("Grace",   32, 22000),
    User->new("Henry",   26, 16000),
    User->new("Ivy",     23, 18000),
    User->new("Jack",    29, 15000),
);

my $result = reduce { $a - $b } 200000,
    map { $_->{salary} }
    grep { $_->{age} >= 25 } @users;

print $result . "\n";