# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110726163104) do

  create_table "about_us", :force => true do |t|
    t.string   "title"
    t.string   "header_1"
    t.text     "content_1"
    t.string   "header_2"
    t.text     "content_2"
    t.string   "header_3"
    t.text     "content_3"
    t.string   "tag_line"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "title"
    t.string   "header_1"
    t.string   "link_1"
    t.string   "header_2"
    t.string   "link_2"
    t.string   "number"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "current_deals", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "for_businesses", :force => true do |t|
    t.string   "title"
    t.string   "header"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "how_it_works_businesses", :force => true do |t|
    t.string   "title"
    t.string   "main_header"
    t.text     "main_content"
    t.string   "subheader_1"
    t.text     "subcontent_1"
    t.string   "subheader_2"
    t.text     "subcontent_2"
    t.string   "subheader_3"
    t.text     "subcontent_3"
    t.string   "subheader_4"
    t.text     "subcontent_4"
    t.string   "subheader_5"
    t.text     "subcontent_5"
    t.string   "subheader_6"
    t.text     "subcontent_6"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "how_it_works_consumers", :force => true do |t|
    t.string   "title"
    t.string   "header_1"
    t.text     "content_1"
    t.string   "header_2"
    t.text     "content_2"
    t.string   "header_3"
    t.text     "content_3"
    t.string   "header_4"
    t.text     "content_4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "privacy_policies", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", :force => true do |t|
    t.string   "author"
    t.string   "words_of_wisdom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recent_deals", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terms_of_services", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "widgets", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
