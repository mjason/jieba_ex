# JiebaEx

结巴rust分词版本的elixir绑定

## Installation
adding `jieba` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:jieba, "~> 0.1.0"}
  ]
end
```

- 需要安装rust

## 例子

 ```elixir
 Jieba.cut("你好吗")
 ```

注意：不需要做初始化，已经在rust层面已经处理