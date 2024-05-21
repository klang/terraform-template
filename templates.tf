
output "template" {
  value = templatefile(
            "${path.module}/templates/t1.tftpl", 
            {
                var1 = "value1"
            }
        )
}

locals {
    template = templatefile(
            "${path.module}/templates/t1.tftpl", 
            {
                var1 = "value1"
            })
}
output "template-from-locals" {
    value = local.template
}