# Haml

<!--
Haml is a templating engine for HTML.
It's are designed to make it both easier and more pleasant
to write HTML documents,
by eliminating redundancy,
reflecting the underlying structure that the document represents,
and providing elegant, easily understandable, and powerful syntax.
-->

HamlはHTMLのためのテンプレートエンジンです。HTMLをより簡単に、楽しく書くために設計されており、冗長性を排し、文書の構造を反映した記述ができます。また、エレガントですぐに習得できる強力な文法を提供します。

## 使用方法

<!--
Haml can be used from the command line
or as part of a Ruby web framework.
The first step is to install the gem:
-->

Hamlはコマンドラインからも使用することも、またRubyのフレームワークの一部として利用することもできます。

    gem install haml

<!--
After you convert some HTML to Haml, you can run
-->

HTMLをHamlで書き終えたら、以下のコマンドでコンパイルすることができます。

    haml document.haml

<!--
to compile them.
For more information on these commands, check out
-->

より詳しい情報を知りたい方は、以下のコマンドで確認して下さい。

    haml --help

<!--
To install Haml in Rails 2,
just add `config.gem "haml"` to `config/environment.rb`.
In Rails 3, add `gem "haml"` to your Gemfile instead.
and both Haml and Sass will be installed.
Views with the `.html.haml` extension will automatically use Haml.
-->

Rails2でHamlを利用したい場合は、`config/environment.rb`に`config.gem "haml"`を書き加えます。Rail3の場合は`Gemfile`に`gem "haml"`を追加します。これでHamlとSassの両方がインストールされます。拡張子`.html.haml`のviewファイルは自動的にHamlとして解釈されます。

<!--
To use Haml programatically,
check out the [YARD documentation](http://haml-lang.com/docs/yardoc/).
-->

プログラムの一部としてHamlを利用したい場合は、[YARD documentation](http://haml-lang.com/docs/yardoc/)をご覧下さい。

## フォーマット

<!--
The most basic element of Haml
is a shorthand for creating HTML:
-->

Hamlの最も基本的な文法は、HTMLを手早く生成するためのものです。

    %tagname{:attr1 => 'value1', :attr2 => 'value2'} Contents

<!--
No end-tag is needed; Haml handles that automatically.
If you prefer HTML-style attributes, you can also use:
-->

終了タグは不要です。Hamlが自動的にうまくやってくれるからです。もしHTMLに近いスタイルの方が好きでしたら、属性部分を以下のように書くこともできます。

    %tagname(attr1='value1' attr2='value2') Contents

<!--
Adding `class` and `id` attributes is even easier.
Haml uses the same syntax as the CSS that styles the document:
-->

`class`や`id`はもっと簡単に書くこともできます。CSSで文書のスタイルを指定するときと同じ文法を使うことができるからです。

    %tagname#id.class

<!--
In fact, when you're using the `<div>` tag,
it becomes _even easier_.
Because `<div>` is such a common element,
a tag without a name defaults to a div. So
-->

実は`<div>`タグを使う場合はさらに簡単にするこたおができます。`<div>`タグは頻繁に用いられるので、名前を指定しないタグはデフォルトでdivになります。

    #foo Hello!

<!--
becomes
-->

と書くと、以下のようにコンパイルされます。

    <div id='foo'>Hello!</div>

<!--
Haml uses indentation
to bring the individual elements to represent the HTML structure.
A tag's children are indented beneath than the parent tag.
Again, a closing tag is automatically added.
For example:
-->

Hamlはインデントを使って、個々の要素をHTMLとして構造化します。ある要素の子要素は、親要素よりも深くインデントされます。改めて確認しておきますが、終了タグは自動的に挿入されます。

    %ul
      %li Salt
      %li Pepper

と書くと、以下のようにコンパイルされます。

    <ul>
      <li>Salt</li>
      <li>Pepper</li>
    </ul>

<!--
You can also put plain text as a child of an element:
-->

プレーンテキストをどのまま子要素にすることもできます。

    %p
      Hello,
      World!

<!--
It's also possible to embed Ruby code into Haml documents.
An equals sign, `=`, will output the result of the code.
A hyphen, `-`, will run the code but not output the result.
You can even use control statements
like `if` and `while`:
-->

Hamlで書かれたドキュメントの中にRubyのコードを埋め込むこともできます。等号記号`=`を書くと、コードを評価した結果が出力されます。ハイフン`-`はコードを評価しますが、その結果は出力されません。`if`文や`while`文を使うこともできます。

    %p
      Date/Time:
      - now = DateTime.now
      %strong= now
      - if now > DateTime.parse("December 31, 2006")
        = "Happy new " + "year!"

<!--
Haml provides far more tools than those presented here.
Check out the [reference documentation](http://beta.haml-lang.com/docs/yardoc/file.HAML_REFERENCE.html)
for full details.
-->

Hamlはここに書いたことよりもはるかに多くの機能を提供します。詳しくは[reference documentation](http://beta.haml-lang.com/docs/yardoc/file.HAML_REFERENCE.html)を御覧下さい。

### インデント

<!--
Haml's indentation can be made up of one or more tabs or spaces.
However, indentation must be consistent within a given document.
Hard tabs and spaces can't be mixed,
and the same number of tabs or spaces must be used throughout.
-->

Hamlのインデントには1つ以上のタブかスペースです。ただし、インデントはドキュメントの中で一貫している必要があります。タブとスペースが混在させることができませんし、タブやスペースの数も揃っていなければなりません。

## 作者

<!--
Haml was created by [Hampton Catlin](http://hamptoncatlin.com)
(hcatlin) and he is the author of the original implementation. However, Hampton
doesn't even know his way around the code anymore and now occasionally consults
on the language issues.  Hampton lives in Jacksonville, Florida and is the lead
mobile developer for Wikimedia.
-->

Hamlを最初に実装したのは[Hampton Catlin](http://hamptoncatlin.com)(hcatlin)ですが、彼は関与することはなくなっていて、今は時折相談に乗る程度です。Hamptonはフロリダ州のジャクソンビル在住の、Wikimedia財団に所属する上級モバイル開発者です。

<!--
[Nathan Weizenbaum](http://nex-3.com) is the primary developer and architect of
the "modern" Ruby implementation of Haml. His hard work has kept the project
alive by endlessly answering forum posts, fixing bugs, refactoring, finding
speed improvements, writing documentation, implementing new features, and
getting Hampton coffee (a fitting task for a boy-genius). Nathan lives in
Seattle, Washington and while not being a student at the University of
Washington or working at an internship, he consults for Unspace Interactive.
-->

[Nathan Weizenbaum](http://nex-3.com)は、Hamlの「モダン」なRuby実装を設計した主要な開発者です。フォーラムに次から次への投稿される質問に答えたり、バグを修正したり、リファクタリングをしたり、高速化の手法を見つけたり、ドキュメントを書いたり、新機能を実装したり、[ハンプトン・コーヒー](http://www.hamptoncoffee.com/Hampton_Coffee_Company/Hampton_Coffee_Company_Espresso_Bars,_Cafes,_%26_Coffee_Roastery.html)を飲んだり（これは天才にはうってつけの仕事です）、彼の奮闘はプロジェクトを支えています。ネイサンはワシントン州シアトルに住んでおり、ワシントン大学の学生でもインターンでもないのですが、Unspace Interactive社でコンサルタントとして働いています。

<!--
If you use this software, you must pay Hampton a compliment. And
buy Nathan some jelly beans. Maybe pet a kitten. Yeah. Pet that kitty.
-->

このソフトウェアを利用するには、ハンプトンにお礼を述べた上で、ネイサンにジェリービーンズを買ってやる必要があります。あるいはペットのネコの相手をしてあげるのでも構いません。

<!--
Some of the work on Haml was supported by Unspace Interactive.
-->

Hamlの一部はUnscpae Interactive社の助けを受けて制作されました。

<!--
Beyond that, the implementation is licensed under the MIT License.
Okay, fine, I guess that means compliments aren't __required__.
-->

あと、このHaml実装はMITライセンスのもとで公開されています。だから実を言うと、利用の際にわざわざ作者に声をかけなくても大丈夫（でも、一言くらいは欲しいかも）。
