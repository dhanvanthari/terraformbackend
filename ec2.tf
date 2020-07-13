resource "aws_instance" "web-1" {
    count = "${var.env== "prod" ? 3 : 1}"
    ami = "${lookup(var.amis, var.aws_region)}"
    availability_zone = "${element(var.azs, count.index)}"
    instance_type = "t2.micro"
    key_name = "avinash_laptop"
    subnet_id = "${element(aws_subnet.subnets.*.id, count.index)}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true  
    tags = {
        Name = "Server-${count.index+1}"
        Env = "uat"
        Owner = "Avinash"
        costcc = "8080"
        region="Asia"
    }
}