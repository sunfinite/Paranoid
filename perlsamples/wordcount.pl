sub wordcount() {
my $filename = 'wordcount.txt';

my %counter;

my $fh = open $filename;
for $fh.lines -> $line {
    my @words = split /\s+/, $line;
    for @words -> $word {
        %counter{$word}++;
    }
}
#say %counter{'There'};
#for %counter.keys.sort -> $word {
#    say "$word {%counter{$word}}";
#}
return %counter;
}

my %a =  wordcount();
say %a
