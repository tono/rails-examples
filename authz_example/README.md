# Authorization(認可)用gemの比較アプリケーション

比較対象のgem:

- [pubdit](https://github.com/varvet/pundit)
  - ModelごとにActionに対する認可条件を定義する
  - ModelごとにPolicyクラスを作成し、そこにActionに対する認可条件を定義する。
  - 基本的にModel、Policy、Controllerが1対1対1になるという制約があるため、
  複数サイトでModelを共有しサイトごとに認可条件を変更するということができない。
    - 特定のModelを扱うControllerが複数存在する場合は何かしらの工夫が必要となる。
  - 条件定義はRubyで記述する(PolicyクラスはPORO)。
  - [実装例](https://github.com/tono/rails-examples/commit/e138370f5fec1a0cdab2b69e9be9856989c652fa)

- [cancancan](https://github.com/CanCanCommunity/cancancan)
  - ユーザーの権限ごとに各ModelとActionに対する認可条件を定義する。
  - 基本的には1つのAbilityクラスで管理する。
    - サイトの規模によってはAbilityクラスが肥大化し、認可条件の管理が難しくなる傾向にある。
  - 条件定義は独自DSLで記述する。
  - [実装例](https://github.com/tono/rails-examples/commit/5c93f4c0055c89bb17ec49a5fa29cb7e2ab7bcd0)

- [banken](https://github.com/kyuden/banken)
  - ControllerごとにActionに対する認可条件を定義する
  - ControllerごとにLoyaltyクラスを作成し、そこにActionに対する認可条件を定義する。
  - ControllerとLoyaltyが1対1となるため、Controller数の多さに比例しLoyaltyクラスが多くなる。
  - Pundit likeなAPI。
  - 条件定義はRubyで記述する(LoyaltyクラスはPORO)。
  - [実装例](https://github.com/tono/rails-examples/commit/40ccf8f14f77f033b406ec29b24b52834d1241d9)

