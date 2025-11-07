<?php

$pdo = new PDO("mysql:host=mysql;dbname=docker_db", "usuario", "senha");

$users = $pdo->query("SELECT first_name, last_name, email, created_at, updated_at FROM users");