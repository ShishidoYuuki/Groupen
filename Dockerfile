# ベースイメージを指定
FROM ruby:2.7.0

# 作業ディレクトリを設定
WORKDIR /app

# 必要なファイルをコピー
COPY Gemfile Gemfile.lock ./

# Gemのインストール
RUN bundle install

# アプリケーションのファイルをコピー
COPY . .

# ポートの公開
EXPOSE 3000

# エントリポイントの設定
CMD ["rails", "server", "-b", "0.0.0.0"]
