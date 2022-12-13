# Módulo para la creación de Discos administrados en Azure
Este módulo crea un disco administrado en Azure y da la posibilidad de atacharlo a una VM existente. Los recursos a emplear son: 
* [azurerm_managed_disk](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/managed_disk)
* [azurerm_virtual_machine_data_disk_attachment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_data_disk_attachment)

Aquí está la lista de parámetros totales para su referencia:
* https://github.com/hashicorp/terraform-provider-azurerm/blob/main/website/docs/r/managed_disk.html.markdown
* https://github.com/hashicorp/terraform-provider-azurerm/blob/main/website/docs/r/virtual_machine_data_disk_attachment.html.markdown


## Usage

```hcl
Agregar el uso del módulo
```

## Examples

- [Ejemplo 01](https://github.com/orion-global/terraform-module-template/tree/prod/examples/example-001): Este es un primer ejemplo

## Requirements

| Name      | Version  |
| --------- | -------- |
| terraform | >= X.X.X |

## Providers

| Name | Version  |
| ---- | -------- |
| aws  | >= X.X.X |

## Modules

| Name   | Source                           | Version |
| ------ | -------------------------------- | ------- |
| modulo | ./modules/eks-managed-node-group | n/a     |

## License

MIT Licensed. See [LICENSE](https://github.com/orion-global/terraform-module-template/tree/prod/LICENSE) for full details.