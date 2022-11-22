provider "aws"{
      region = "us-east-1"
}

#create our rds DB using TF
resource "aws_db_instance" "default" {
      engine = "mysql"
      engine_version = "8.0.27"
      allocated_storage = 20
      instance_class = "t3.micro"
      storage_type ="gp2"
      identifier = "mydb"
      username = "admin"
      password = "Aspire@123"
      publicly_accessible = true
      skip_final_snapshot = true

      tags = {
            Name = "Myrdsdb"
      }
}