namespace :pages do
  desc 'Update slugs for all pages'
  task slugify: :environment do
    Spina::Page.find_each(&:save)
    Spina::Article.find_each(&:save)
    Spina::Member.find_each(&:save)
    Spina::CaseStudy.find_each(&:save)
  end
end
