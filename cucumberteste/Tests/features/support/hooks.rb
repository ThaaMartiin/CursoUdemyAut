Before do
    puts 'estou sendo executado antes de cada cenário'
    @soma = 5 + 5
end

After do
    puts 'estou sendo executado depois de cada cenário'
    @soma = 5 + 5
end

Before '@comeco' do
    puts 'rodei apenas o cenário com a tag @comeco'
end

After '@final' do
    puts 'rodei apenas o cenário com a tag @final'
end