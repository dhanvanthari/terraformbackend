output "VPC_Name" {
  description = "VPC name"
  value       = ["${aws_vpc.default.tags.Name}"]
}

output "VPC_ID" {
  description = "VPC name"
  value       = ["${aws_vpc.default.id}"]
}
