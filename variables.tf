variable "common_tags" {
  type = map(string)
}
variable "product" {
  default = "hmi"
}
variable "location" {
  default = "UK South"
}
variable "env" {}

variable "active_directory_group" {
  type        = string
  description = "Active Directory Group Name"
  default     = "DTS SDS Developers"
}
variable "jenkins_identity_object_id" {
  description = "Objectid for jenkins managed identity"
  default     = "7ef3b6ce-3974-41ab-8512-c3ef4bb8ae01"
}