# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{somatics3-generators}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Benjamin Wong"]
  s.date = %q{2010-09-15}
  s.description = %q{Somatics 3 generators is used to generate a resource with skeleton admin panel}
  s.email = %q{tkwong@inspiresynergy.com}
  s.executables = ["somatics", "somatify"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/somatics",
     "bin/somatify",
     "lib/generators/somatics.rb",
     "lib/generators/somatics/authenticated/authenticated_generator.rb",
     "lib/generators/somatics/authenticated/templates/mailer.rb",
     "lib/generators/somatics/authenticated/templates/migration.rb",
     "lib/generators/somatics/authenticated/templates/model.rb",
     "lib/generators/somatics/authenticated/templates/observer.rb",
     "lib/generators/somatics/authenticated/templates/test/mailer_test.rb",
     "lib/generators/somatics/authenticated/templates/test/model_functional_test.rb",
     "lib/generators/somatics/authenticated/templates/test/sessions_functional_test.rb",
     "lib/generators/somatics/authenticated/templates/test/unit_test.rb",
     "lib/generators/somatics/authenticated/templates/test/users.yml",
     "lib/generators/somatics/authenticated_controller/authenticated_controller_generator.rb",
     "lib/generators/somatics/authenticated_controller/templates/_model_partial.html.erb",
     "lib/generators/somatics/authenticated_controller/templates/activation.erb",
     "lib/generators/somatics/authenticated_controller/templates/authenticated_system.rb",
     "lib/generators/somatics/authenticated_controller/templates/authenticated_test_helper.rb",
     "lib/generators/somatics/authenticated_controller/templates/config/initializers/site_keys.rb",
     "lib/generators/somatics/authenticated_controller/templates/controller.rb",
     "lib/generators/somatics/authenticated_controller/templates/helper.rb",
     "lib/generators/somatics/authenticated_controller/templates/login.html.erb",
     "lib/generators/somatics/authenticated_controller/templates/mailer.rb",
     "lib/generators/somatics/authenticated_controller/templates/migration.rb",
     "lib/generators/somatics/authenticated_controller/templates/model.rb",
     "lib/generators/somatics/authenticated_controller/templates/observer.rb",
     "lib/generators/somatics/authenticated_controller/templates/session_helper.rb",
     "lib/generators/somatics/authenticated_controller/templates/sessions_controller.rb",
     "lib/generators/somatics/authenticated_controller/templates/signup.html.erb",
     "lib/generators/somatics/authenticated_controller/templates/signup_notification.erb",
     "lib/generators/somatics/authenticated_controller/templates/test/mailer_test.rb",
     "lib/generators/somatics/authenticated_controller/templates/test/model_functional_test.rb",
     "lib/generators/somatics/authenticated_controller/templates/test/sessions_functional_test.rb",
     "lib/generators/somatics/authenticated_controller/templates/test/unit_test.rb",
     "lib/generators/somatics/authenticated_controller/templates/test/users.yml",
     "lib/generators/somatics/helper/helper_generator.rb",
     "lib/generators/somatics/install/install_generator.rb",
     "lib/generators/somatics/install/templates/config/locales/somatics_en.yml",
     "lib/generators/somatics/install/templates/config/locales/somatics_zh-TW.yml",
     "lib/generators/somatics/install/templates/controller_admin.rb",
     "lib/generators/somatics/install/templates/controller_home.rb",
     "lib/generators/somatics/install/templates/helper_admin.rb",
     "lib/generators/somatics/install/templates/layout_admin.html.erb",
     "lib/generators/somatics/install/templates/lib/somatic_link_renderer.rb",
     "lib/generators/somatics/install/templates/partial_menu.html.erb",
     "lib/generators/somatics/install/templates/public/images/somatics/add.png",
     "lib/generators/somatics/install/templates/public/images/somatics/arrow_collapsed.png",
     "lib/generators/somatics/install/templates/public/images/somatics/arrow_expanded.png",
     "lib/generators/somatics/install/templates/public/images/somatics/attachment.png",
     "lib/generators/somatics/install/templates/public/images/somatics/bullet_arrow_left.png",
     "lib/generators/somatics/install/templates/public/images/somatics/bullet_arrow_right.png",
     "lib/generators/somatics/install/templates/public/images/somatics/bullet_diamond.png",
     "lib/generators/somatics/install/templates/public/images/somatics/bullet_end.png",
     "lib/generators/somatics/install/templates/public/images/somatics/bullet_go.png",
     "lib/generators/somatics/install/templates/public/images/somatics/bullet_toggle_minus.png",
     "lib/generators/somatics/install/templates/public/images/somatics/bullet_toggle_plus.png",
     "lib/generators/somatics/install/templates/public/images/somatics/c.png",
     "lib/generators/somatics/install/templates/public/images/somatics/cancel.png",
     "lib/generators/somatics/install/templates/public/images/somatics/changeset.png",
     "lib/generators/somatics/install/templates/public/images/somatics/comment.png",
     "lib/generators/somatics/install/templates/public/images/somatics/comments.png",
     "lib/generators/somatics/install/templates/public/images/somatics/content-left.png",
     "lib/generators/somatics/install/templates/public/images/somatics/content-right.png",
     "lib/generators/somatics/install/templates/public/images/somatics/copy.png",
     "lib/generators/somatics/install/templates/public/images/somatics/csharp.png",
     "lib/generators/somatics/install/templates/public/images/somatics/database_key.png",
     "lib/generators/somatics/install/templates/public/images/somatics/default.png",
     "lib/generators/somatics/install/templates/public/images/somatics/delete.png",
     "lib/generators/somatics/install/templates/public/images/somatics/document.png",
     "lib/generators/somatics/install/templates/public/images/somatics/draft.png",
     "lib/generators/somatics/install/templates/public/images/somatics/duplicate.png",
     "lib/generators/somatics/install/templates/public/images/somatics/edit.png",
     "lib/generators/somatics/install/templates/public/images/somatics/exclamation.png",
     "lib/generators/somatics/install/templates/public/images/somatics/external.png",
     "lib/generators/somatics/install/templates/public/images/somatics/fav.png",
     "lib/generators/somatics/install/templates/public/images/somatics/fav_off.png",
     "lib/generators/somatics/install/templates/public/images/somatics/feed.png",
     "lib/generators/somatics/install/templates/public/images/somatics/folder.png",
     "lib/generators/somatics/install/templates/public/images/somatics/folder_open.png",
     "lib/generators/somatics/install/templates/public/images/somatics/footer-bg.png",
     "lib/generators/somatics/install/templates/public/images/somatics/footer-left.png",
     "lib/generators/somatics/install/templates/public/images/somatics/footer-right.png",
     "lib/generators/somatics/install/templates/public/images/somatics/group.png",
     "lib/generators/somatics/install/templates/public/images/somatics/help.png",
     "lib/generators/somatics/install/templates/public/images/somatics/history.png",
     "lib/generators/somatics/install/templates/public/images/somatics/image.png",
     "lib/generators/somatics/install/templates/public/images/somatics/lightning.png",
     "lib/generators/somatics/install/templates/public/images/somatics/link.png",
     "lib/generators/somatics/install/templates/public/images/somatics/loading.gif",
     "lib/generators/somatics/install/templates/public/images/somatics/locked.png",
     "lib/generators/somatics/install/templates/public/images/somatics/message.png",
     "lib/generators/somatics/install/templates/public/images/somatics/milestone.png",
     "lib/generators/somatics/install/templates/public/images/somatics/move.png",
     "lib/generators/somatics/install/templates/public/images/somatics/news.png",
     "lib/generators/somatics/install/templates/public/images/somatics/openid-bg.gif",
     "lib/generators/somatics/install/templates/public/images/somatics/package.png",
     "lib/generators/somatics/install/templates/public/images/somatics/pdf.png",
     "lib/generators/somatics/install/templates/public/images/somatics/php.png",
     "lib/generators/somatics/install/templates/public/images/somatics/plugin.png",
     "lib/generators/somatics/install/templates/public/images/somatics/projects.png",
     "lib/generators/somatics/install/templates/public/images/somatics/rails.png",
     "lib/generators/somatics/install/templates/public/images/somatics/reload.png",
     "lib/generators/somatics/install/templates/public/images/somatics/report.png",
     "lib/generators/somatics/install/templates/public/images/somatics/ruby.png",
     "lib/generators/somatics/install/templates/public/images/somatics/save.png",
     "lib/generators/somatics/install/templates/public/images/somatics/sort_asc.png",
     "lib/generators/somatics/install/templates/public/images/somatics/sort_desc.png",
     "lib/generators/somatics/install/templates/public/images/somatics/stats.png",
     "lib/generators/somatics/install/templates/public/images/somatics/table_multiple.png",
     "lib/generators/somatics/install/templates/public/images/somatics/task_done.png",
     "lib/generators/somatics/install/templates/public/images/somatics/task_late.png",
     "lib/generators/somatics/install/templates/public/images/somatics/task_parent_end.png",
     "lib/generators/somatics/install/templates/public/images/somatics/task_todo.png",
     "lib/generators/somatics/install/templates/public/images/somatics/text.png",
     "lib/generators/somatics/install/templates/public/images/somatics/text_list_bullets.png",
     "lib/generators/somatics/install/templates/public/images/somatics/textfield.png",
     "lib/generators/somatics/install/templates/public/images/somatics/ticket.png",
     "lib/generators/somatics/install/templates/public/images/somatics/ticket_checked.png",
     "lib/generators/somatics/install/templates/public/images/somatics/ticket_edit.png",
     "lib/generators/somatics/install/templates/public/images/somatics/ticket_go.png",
     "lib/generators/somatics/install/templates/public/images/somatics/ticket_note.png",
     "lib/generators/somatics/install/templates/public/images/somatics/time.png",
     "lib/generators/somatics/install/templates/public/images/somatics/time_add.png",
     "lib/generators/somatics/install/templates/public/images/somatics/toggle_check.png",
     "lib/generators/somatics/install/templates/public/images/somatics/true.png",
     "lib/generators/somatics/install/templates/public/images/somatics/unlock.png",
     "lib/generators/somatics/install/templates/public/images/somatics/user.png",
     "lib/generators/somatics/install/templates/public/images/somatics/warning.png",
     "lib/generators/somatics/install/templates/public/images/somatics/wiki_edit.png",
     "lib/generators/somatics/install/templates/public/images/somatics/xml.png",
     "lib/generators/somatics/install/templates/public/images/somatics/zip.png",
     "lib/generators/somatics/install/templates/public/images/somatics/zoom_in.png",
     "lib/generators/somatics/install/templates/public/javascripts/somatics/base.js",
     "lib/generators/somatics/install/templates/public/javascripts/somatics/context_menu.js",
     "lib/generators/somatics/install/templates/public/javascripts/somatics/controls.js",
     "lib/generators/somatics/install/templates/public/javascripts/somatics/dragdrop.js",
     "lib/generators/somatics/install/templates/public/javascripts/somatics/effects.js",
     "lib/generators/somatics/install/templates/public/javascripts/somatics/prototype.js",
     "lib/generators/somatics/install/templates/public/javascripts/somatics/rails.js",
     "lib/generators/somatics/install/templates/public/javascripts/somatics/select_list_move.js",
     "lib/generators/somatics/install/templates/public/stylesheets/somatics/base.css",
     "lib/generators/somatics/install/templates/public/stylesheets/somatics/context_menu.css",
     "lib/generators/somatics/install/templates/public/stylesheets/somatics/csshover.htc",
     "lib/generators/somatics/install/templates/public/stylesheets/somatics/jstoolbar.css",
     "lib/generators/somatics/install/templates/view_index.html.erb",
     "lib/generators/somatics/scaffold/scaffold_generator.rb",
     "lib/generators/somatics/scaffold/templates/_form.html.erb",
     "lib/generators/somatics/scaffold/templates/edit.html.erb",
     "lib/generators/somatics/scaffold/templates/index.html.erb",
     "lib/generators/somatics/scaffold/templates/new.html.erb",
     "lib/generators/somatics/scaffold/templates/show.html.erb",
     "lib/generators/somatics/scaffold_controller/USAGE",
     "lib/generators/somatics/scaffold_controller/scaffold_controller_generator.rb",
     "lib/generators/somatics/scaffold_controller/templates/builder_index.pdf.prawn",
     "lib/generators/somatics/scaffold_controller/templates/builder_index.xls.builder",
     "lib/generators/somatics/scaffold_controller/templates/builder_index.xml.builder",
     "lib/generators/somatics/scaffold_controller/templates/controller.rb",
     "lib/generators/somatics/scaffold_controller/templates/locales_en.yml",
     "lib/generators/somatics/scaffold_controller/templates/locales_zh-TW.yml",
     "lib/generators/somatics/scaffold_controller/templates/partial_bulk.html.erb",
     "lib/generators/somatics/scaffold_controller/templates/partial_edit.html.erb",
     "lib/generators/somatics/scaffold_controller/templates/partial_form.html.erb",
     "lib/generators/somatics/scaffold_controller/templates/partial_list.html.erb",
     "lib/generators/somatics/scaffold_controller/templates/partial_menu.html.erb",
     "lib/generators/somatics/scaffold_controller/templates/partial_show.html.erb",
     "lib/generators/somatics/scaffold_controller/templates/view_edit.html.erb",
     "lib/generators/somatics/scaffold_controller/templates/view_index.html.erb",
     "lib/generators/somatics/scaffold_controller/templates/view_new.html.erb",
     "lib/generators/somatics/scaffold_controller/templates/view_show.html.erb",
     "lib/somatics3-generators.rb",
     "somatics3-generators.gemspec",
     "templates/somatics.rb",
     "test/helper.rb",
     "test/test_somatics3-generators.rb"
  ]
  s.homepage = %q{http://github.com/inspiresynergy/somatics3-generators}
  s.rdoc_options = ["--charset=UTF-8", "--exclude=lib/generators/somatics/authenticated/templates/mailer.rb", "--exclude=lib/generators/somatics/authenticated/templates/migration.rb", "--exclude=lib/generators/somatics/authenticated/templates/model.rb", "--exclude=lib/generators/somatics/authenticated/templates/observer.rb", "--exclude=lib/generators/somatics/authenticated/templates/test", "--exclude=lib/generators/somatics/authenticated_controller/templates/_model_partial.html.erb", "--exclude=lib/generators/somatics/authenticated_controller/templates/activation.erb", "--exclude=lib/generators/somatics/authenticated_controller/templates/authenticated_system.rb", "--exclude=lib/generators/somatics/authenticated_controller/templates/authenticated_test_helper.rb", "--exclude=lib/generators/somatics/authenticated_controller/templates/config", "--exclude=lib/generators/somatics/authenticated_controller/templates/controller.rb", "--exclude=lib/generators/somatics/authenticated_controller/templates/helper.rb", "--exclude=lib/generators/somatics/authenticated_controller/templates/login.html.erb", "--exclude=lib/generators/somatics/authenticated_controller/templates/mailer.rb", "--exclude=lib/generators/somatics/authenticated_controller/templates/migration.rb", "--exclude=lib/generators/somatics/authenticated_controller/templates/model.rb", "--exclude=lib/generators/somatics/authenticated_controller/templates/observer.rb", "--exclude=lib/generators/somatics/authenticated_controller/templates/session_helper.rb", "--exclude=lib/generators/somatics/authenticated_controller/templates/sessions_controller.rb", "--exclude=lib/generators/somatics/authenticated_controller/templates/signup.html.erb", "--exclude=lib/generators/somatics/authenticated_controller/templates/signup_notification.erb", "--exclude=lib/generators/somatics/authenticated_controller/templates/test", "--exclude=lib/generators/somatics/install/templates/config", "--exclude=lib/generators/somatics/install/templates/controller_admin.rb", "--exclude=lib/generators/somatics/install/templates/controller_home.rb", "--exclude=lib/generators/somatics/install/templates/helper_admin.rb", "--exclude=lib/generators/somatics/install/templates/layout_admin.html.erb", "--exclude=lib/generators/somatics/install/templates/lib", "--exclude=lib/generators/somatics/install/templates/partial_menu.html.erb", "--exclude=lib/generators/somatics/install/templates/public", "--exclude=lib/generators/somatics/install/templates/view_index.html.erb", "--exclude=lib/generators/somatics/model_relationship/templates/_form.html.erb", "--exclude=lib/generators/somatics/model_relationship/templates/edit.html.erb", "--exclude=lib/generators/somatics/model_relationship/templates/index.html.erb", "--exclude=lib/generators/somatics/model_relationship/templates/new.html.erb", "--exclude=lib/generators/somatics/model_relationship/templates/show.html.erb", "--exclude=lib/generators/somatics/scaffold/templates/_form.html.erb", "--exclude=lib/generators/somatics/scaffold/templates/edit.html.erb", "--exclude=lib/generators/somatics/scaffold/templates/index.html.erb", "--exclude=lib/generators/somatics/scaffold/templates/new.html.erb", "--exclude=lib/generators/somatics/scaffold/templates/show.html.erb", "--exclude=lib/generators/somatics/scaffold_controller/templates/builder_index.pdf.prawn", "--exclude=lib/generators/somatics/scaffold_controller/templates/builder_index.xls.builder", "--exclude=lib/generators/somatics/scaffold_controller/templates/builder_index.xml.builder", "--exclude=lib/generators/somatics/scaffold_controller/templates/controller.rb", "--exclude=lib/generators/somatics/scaffold_controller/templates/locales_en.yml", "--exclude=lib/generators/somatics/scaffold_controller/templates/locales_zh-TW.yml", "--exclude=lib/generators/somatics/scaffold_controller/templates/partial_bulk.html.erb", "--exclude=lib/generators/somatics/scaffold_controller/templates/partial_edit.html.erb", "--exclude=lib/generators/somatics/scaffold_controller/templates/partial_form.html.erb", "--exclude=lib/generators/somatics/scaffold_controller/templates/partial_list.html.erb", "--exclude=lib/generators/somatics/scaffold_controller/templates/partial_menu.html.erb", "--exclude=lib/generators/somatics/scaffold_controller/templates/partial_show.html.erb", "--exclude=lib/generators/somatics/scaffold_controller/templates/view_edit.html.erb", "--exclude=lib/generators/somatics/scaffold_controller/templates/view_index.html.erb", "--exclude=lib/generators/somatics/scaffold_controller/templates/view_new.html.erb", "--exclude=lib/generators/somatics/scaffold_controller/templates/view_show.html.erb"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{somatics3}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Somatics - Adminable Resource generators}
  s.test_files = [
    "test/helper.rb",
     "test/test_somatics3-generators.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

