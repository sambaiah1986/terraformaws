resource "aws_instance" "web-1" {
    #ami = "${data.aws_ami.my_ami.id}"
    #ami = "ami-05c48350077c137e7"
	ami = "ami-0443305dabd4be2bc"
    availability_zone = "us-east-2a"
    instance_type = "t2.micro"
    key_name = "t480"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "Server-Niharika"
        Env = "Prod"
        Owner = "Sasi"
    }
}
