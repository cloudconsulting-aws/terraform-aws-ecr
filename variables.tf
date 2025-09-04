variable "repository_name" {
    description = "Name of the ECR repository"
    type        = string
}

variable "image_tag_mutability" {
    description = "The tag mutability setting for the repository"
    type        = string
    default     = "MUTABLE"
}

variable "tags" {
    description = "A map of tags to assign to the resource"
    type        = map(string)
    default     = {}
}