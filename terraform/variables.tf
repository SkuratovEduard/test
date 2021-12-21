variable "server_port" {
  description = "The port of server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "region" {
  description = "AWS region"
  default     = "us-east-2"
  type        = string
} 
