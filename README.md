rustup target add wasm32-unknown-unknown

cargo install wasm-bindgen-cli

cargo install trunk


# Trunk.toml
[build]
target = "./index.html"

[serve]
port = 1420


trunk serve --open
