namespace :articles do
  desc "Resets comment counter cache for all articles"
  task reset_counter_cache: :environment do
    Article.all.each { |article| Article.reset_counters(article.id, :comments) }
    puts "Articles counter cache reset"
  end

end
