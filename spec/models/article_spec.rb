require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:topic) { Topic.create(name: "Tech")}
  let(:language) { Language.create(name: "English")}

  it "is valid with valid attributes" do
    article = Article.new(title: "Test", content: "Test content", source:"test source", topic: topic, language: language)
    expect(article).to be_valid
  end

  it "is not valid without a title" do
    article = Article.new(title: nil, content: "Test content", source:"test source", topic: topic, language: language)
    expect(article).to_not be_valid
  end

  it "is not valid without a content" do
    article = Article.new(title: "test", content: nil, source:"test source", topic: topic, language: language)
  end

  it "is not valid without a source" do
    article = Article.new(title: "test", content: "test content", source: nil, topic: topic, language: language)
  end

end
