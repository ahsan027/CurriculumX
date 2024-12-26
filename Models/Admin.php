<?php

class Admin {
   private $table_name;
   private $conn;

   private $admin_id;
   private $full_name;
   private $email;
   private $username;

   public function __construct($db_conn) {
       $this->conn = $db_conn;
       $this->table_name = "admin";
   }

   public function init($admin_id) {
       try {
           $sql = 'SELECT * FROM ' . $this->table_name . ' WHERE admin_id = ?';
           $stmt = $this->conn->prepare($sql);
           $stmt->execute([$admin_id]);

           if ($stmt->rowCount() == 1) {
               $admin = $stmt->fetch();
               $this->admin_id = $admin['admin_id'];
               $this->username = $admin['username'];
               $this->email = $admin['email'];
               $this->full_name = $admin['full_name'];
               return true;
           } else {
               return false;
           }
       } catch (PDOException $e) {
           return false;
       }
   }

   public function authenticate($input_username, $input_password) {
       try {
           $sql = 'SELECT * FROM ' . $this->table_name . ' WHERE username = ?';
           $stmt = $this->conn->prepare($sql);
           $stmt->execute([$input_username]);

           if ($stmt->rowCount() == 1) {
               $admin = $stmt->fetch();
               $db_username = $admin["username"];
               $db_password = $admin["password"];

               if ($db_username === $input_username) {
                   if (password_verify($input_password, $db_password)) {
                       $this->admin_id = $admin["admin_id"];
                       $this->username = $admin["username"];
                       $this->email = $admin["email"];
                       $this->full_name = $admin["full_name"];
                       return true;
                   } else {
                       return false;
                   }
               } else {
                   return false;
               }
           } else {
               return false;
           }
       } catch (PDOException $e) {
           return false;
       }
   }

   public function get() {
       $data = array(
           'admin_id' => $this->admin_id,
           'username' => $this->username,
           'full_name' => $this->full_name,
           'email' => $this->email
       );
       return $data;
   }
}
