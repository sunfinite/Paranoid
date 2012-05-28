sub python2perldict(%h1) {
if %h1{'first'}.defined {
    say "the value of 'first' is defined";
}
if %h1<second>.defined {
    say "the value of 'second' is defined";
}

if %h1.exists('first') {
    say "the key 'first' exists in h2";
}

say %h1.exists('third') ?? "third exists" !! "third does not exist";

say %h1<first>;
say %h1<second>;

# TODO hash with fixed keys not implemented yet
#my %h2{'a', 'b'} = ('A', 'B');
say %h1.delete('first');
if  %h1.exists('first') {
    say 'here';
}
else {
    say 'not here';
}
%h1{'third'} = '3rd';
say %h1{'third'};
}

my %h1 = 'first' => 1, 'second' => 2;
python2perldict(%h1)
