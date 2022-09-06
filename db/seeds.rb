10.times do
    name = Faker::Name.unique.name
    number_of_drinks =  rand(1..10)
    KaraokeSinger.create(
        name: name,
        number_of_drinks: number_of_drinks
    )
end

30.times do
    title = Faker::Music.album
    runtime_in_minutes = rand(1..5)
    artist_name = Faker::Music.band
    Song.create(
        title: title,
        runtime_in_minutes: runtime_in_minutes,
        artist_name: artist_name
    )
end

50.times do 
    song_id = rand(1..Song.count)
    karaoke_singer_id = rand(1..KaraokeSinger.count)
    Joiner.create(song_id: song_id, karaoke_singer_id: karaoke_singer_id)
end