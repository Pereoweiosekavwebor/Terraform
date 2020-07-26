resource "aws_instance" "tf_instance" {
  ami= "ami-0bdcc6c05dec346bf"
  instance_type="t2.micro"
  key_name="newkey"
 tags= {
   Name= "EC2_instance"
 }
}
# making modifications