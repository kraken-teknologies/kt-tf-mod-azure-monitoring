variable "amount" {
  type = number
  default = 50
  description = "Value in dollars USD"
}

variable "budget_name" {
  type = string
  default = "Budget Name Not Set"
}

variable "resource_group_id" {
  type = string
}

variable "tags" {
  type = map(any)
  default = {
    ManagedBy = "Terraform"
    Env = "Azure Demos"
    Owner = "Not Set"
  }
}

variable "start_date" {
  type = string
}

variable "notifications" {
  type = map(object({
    enabled: bool
    threshold: number
    operator: string
    threshold_type: string
    contact_emails: list(string)
    contact_groups: list(string)
    contact_roles: list(string)
  }))

}