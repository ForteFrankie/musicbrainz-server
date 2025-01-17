package MusicBrainz::Server::Edit::Genre::Delete;
use Moose;

use MusicBrainz::Server::Constants qw( $EDIT_GENRE_DELETE );
use MusicBrainz::Server::Translation qw( N_l );

extends 'MusicBrainz::Server::Edit::Generic::Delete';
with 'MusicBrainz::Server::Edit::Genre';

sub edit_name { N_l('Remove genre') }
sub edit_type { $EDIT_GENRE_DELETE }

sub _delete_model { 'Genre' }

__PACKAGE__->meta->make_immutable;
no Moose;

1;

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 MetaBrainz Foundation

This file is part of MusicBrainz, the open internet music database,
and is licensed under the GPL version 2, or (at your option) any
later version: http://www.gnu.org/licenses/gpl-2.0.txt

=cut
