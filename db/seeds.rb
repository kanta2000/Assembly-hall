# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: "a@a",
  password: "aaaaaa"
  )
Customer.create!(
  [
    {
      first_name: "日本",
      last_name: "太朗",
      first_name_kana: "ニホン",
      last_name_kana: "タロウ",
      email: "0@0",
      postal_code: "5420076",
      address: "大阪府大阪市中央区難波4-4-4 難波御堂筋センタービル 8階",
      telephone_number: "00088889999",
      is_active: true,
      password: "000000",
    },
    {
      first_name: "六本木",
      last_name: "一",
      first_name_kana: "ロッポンギ",
      last_name_kana: "ハジメ",
      email: "1@1",
      postal_code: "1066223",
      address: "東京都港区六本木3-2-1 住友不動産六本木グランドタワー 23F",
      telephone_number: "09177772222",
      is_active: false,
      password: "111111",
    }
  ]
  )
Address.create!(
  [
    {
      customer_id: 1,
      name: "渋谷校",
      postal_code: "1500041",
      destination: "東京都渋谷区神南1-19-11 パークウェースクエア2 4階"
    },
    {
      customer_id: 1,
      name: "新宿校",
      postal_code: "1600022",
      destination: "東京都新宿区新宿2-5-10 成信ビル 4階"
    },
    {
      customer_id: 1,
      name: "難波校",
      postal_code: "5420076",
      destination: "大阪府大阪市中央区難波4-7-14 難波フロントビル 4階"
    }
  ]
  )
Genre.create!(
  [
    {
      name: "遺言書",
      is_active: true,
    },
    {
      name: "投資",
      is_active: true,
    },
    {
      name: "情報物産",
      is_active: true,
    },
    {
      name: "営業",
      is_active: true,
    },
    {
      name: "Youtube",
      is_active: false,
    }
  ]
  )
for i in 1..10 do
  Item.create!(
    [
      {
        genre_id: 1,
        name: "相続でモメナイ遺言書の書き方#{i}",
        introduction: "遺言書、いざ自分で考えると、どうしたらいいのか分からない問題をこれ一冊で解決！",
        price: rand(1..10) * 100,
        image: File.open("./app/assets/images/遺言書.jpg"),
        is_active: true
      },
      {
        genre_id: 2,
        name: "FXチャートの味方#{i}",
        introduction: "プログラミング学習をしながら磨いた技術を・・・負けました",
        price: rand(1..10) * 200,
        image: File.open("./app/assets/images/投資.jpg"),
        is_active: true
      },
      {
        genre_id: 3,
        name: "情報物産#{i}",
        introduction: "この世のあらゆる場所を巡って・ 情報を書き記しています。",
        price: rand(1..10) * 300,
        image: File.open("./app/assets/images/情報物産.jpg"),
        is_active: false
      },
      {
        genre_id: 4,
        name: "笑うセールスマン#{i}",
        introduction: "営業成功の秘訣",
        price: rand(1..10) * 300,
        image: File.open("./app/assets/images/営業.jpg"),
        is_active: false
      }
    ]
    )
end