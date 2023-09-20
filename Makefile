---------------------Package--------------------
argon2 = "0.5.0"
axum = "0.6.12"
axum-extra = { version = "0.7.2", features = ["cookie"] }
chrono = { version = "0.4.24", features = ["serde"] }
dotenv = "0.15.0"
jsonwebtoken = "8.3.0"
rand_core = { version = "0.6.4", features = ["std"] }
serde = { version = "1.0.159", features = ["derive"] }
serde_json = "1.0.95"
sqlx = { version = "0.7.0", features = ["runtime-async-std-native-tls", "postgres", "chrono", "uuid"] }
time = "0.3.20"
tokio = { version = "1.27.0", features = ["full"] }
tower-http = { version = "0.4.0", features = ["cors"] }
uuid = { version = "1.3.0", features = ["serde", "v4"] }

then :  cargo build or cargo update 

---------------------fix bug ---------------------------

error: failed to run custom build command for `ring v0.16.20`

rustup toolchain install stable-x86_64-pc-windows-gnu

rustup default stable-x86_64-pc-windows-gnu

then install : desktop dev tool (click link: " https://www.youtube.com/watch?v=XeR3ECFDzDY&list=LL&index=1&t=13s ")  

-------------------run pj3--------------------------------

cargo watch -q -c -w src/ -x run
cargo watch -q -c -w src/ -x run --release

----------------Docker--------------------------------------

create a file : docker-compose.yml

create a file : .env 

docker-compose up -d

-create server db pgadmin4 

1 check ip : docker inspect postgres
"IPAddress": "192.18.0.3"
2 login pgadmin4 add server : http://localhost:5050
hostname/address : 192.18.0.3

----------------mgrations-------------------------------------
if you didn't install sqlx , open cmd your computer : cargo install sqlx-cli

sqlx migrate add -r init

sqlx migrate run

----------------file pj--------------------

jwt_auth.rs
config.rs > model.rs > response.rs > handler.rs > route.rs