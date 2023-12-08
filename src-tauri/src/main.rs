use actix_web::{web, App, HttpServer, Responder};

async fn login() -> impl Responder {
    println!("Log in");
    "Logged in"
}

async fn list_policies() -> impl Responder {
    println!(~List Policies~);
    "Policies listed!"
}

async fn list_roles() -> impl Responder {
    println("List roles");
    "Roles listed!"
}

async fn list_policies_attached_to_role() -> impl Responder {
    println!("List policies attached to a roles");
    "Policies attached listed!"
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new()
        .route("/login", web::get().to(login))
        .route("/list_policies", web::get().to(list_policies))
        .route("/list_roles", web::get().to(list_roles))
        .route("/list_policies_attached_to_role",
    web::get().to(list_policies_attached_to_role))
    })

    .bind("127.0.0.1:8080")?
    .run()
    .await
}