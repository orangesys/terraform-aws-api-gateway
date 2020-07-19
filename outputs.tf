# Module      : Api Gateway
# Description : Terraform module to create Api Gateway resource on AWS.
output "id" {
  value       = join("", aws_api_gateway_rest_api.default.*.id)
  description = "The ID of the REST API."
}

output "root_parent_id" {
  value       = join("", aws_api_gateway_rest_api.default.*.root_resource_id)
  description = "The parent ID of the REST API."
}

output "resource_parent_id" {
  value       = join("", aws_api_gateway_resource.default.*.id)
  description = "The resource parent ID of the REST API."
}

output "authorizer_default_id" {
  value = join("", aws_api_gateway_authorizer.default.*.id)
}

output "execution_arn" {
  value       = join("", aws_api_gateway_rest_api.default.*.execution_arn)
  description = "The Execution ARN of the REST API."
}

output "tags" {
  value       = module.labels.tags
  description = "A mapping of tags to assign to the resource."
}
