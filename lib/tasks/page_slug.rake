namespace :pages do
  desc 'Update slugs for all pages'
  task slugify: :environment do
    Spina::Page.find_each(&:save)
  end
end
