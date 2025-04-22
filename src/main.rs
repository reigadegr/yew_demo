// src/main.rs
use yew::prelude::*;

#[function_component(App)]
pub fn app() -> Html {
    html! {
        <h1>{"hello world"}</h1>
    }
}

fn main() {
    yew::Renderer::<App>::new().render();
}
