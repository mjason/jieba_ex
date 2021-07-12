use jieba_rs::Jieba;
use lazy_static::lazy_static;

lazy_static! {
    static ref JIEBA: Jieba = Jieba::new();
}

#[rustler::nif]
pub fn cut(txt: String) -> Vec<String> {
    let words = JIEBA.cut(&txt, false);
    words.iter().map(|n| n.to_string()).collect()
}

rustler::init!("Elixir.Jieba", [cut]);
