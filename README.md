# ☁️ cloud-iac-infra

Proyecto de infraestructura como código (IaC) usando **Terraform** para desplegar una arquitectura básica en **AWS**. Incluye red (VPC), subred pública, almacenamiento (S3), y una instancia EC2 que se configura automáticamente con NGINX.

---

## 🛠️ Servicios y tecnologías usadas

- **Terraform** para definir infraestructura como código
- **AWS VPC**: red personalizada
- **Subred pública**
- **Instancia EC2**: servidor Amazon Linux con NGINX instalado
- **S3 Bucket**: almacenamiento del estado remoto de Terraform
- **User data (bash script)**: configuración automática del servidor

---

## 📁 Estructura del proyecto

```
cloud-iac-infra/
├── main.tf                  # Declaración de recursos principales
├── variables.tf             # Variables parametrizables
├── outputs.tf               # Salidas útiles (IP EC2, bucket)
├── terraform.tfvars         # Valores concretos (privado)
├── backend.tf               # Configuración del estado remoto
├── scripts/
│   └── install-nginx.sh     # Script para instalar NGINX en EC2
├── modules/
│   └── vpc/                 # Módulo reusable para la VPC
│       ├── main.tf
│       └── variables.tf
├── .gitignore
└── README.md
```

---

## 🚀 Cómo usar este proyecto

### 1. Configurar credenciales de AWS

```bash
aws configure
```

### 2. Inicializar el proyecto

```bash
terraform init
```

### 3. Ver el plan de ejecución

```bash
terraform plan
```

### 4. Aplicar la infraestructura

```bash
terraform apply
```

> ✅ Al finalizar verás la IP pública de la instancia EC2. Puedes pegarla en tu navegador y ver el servidor NGINX activo.

---

## 🧽 Destrucción de recursos

Para eliminar todo lo creado:

```bash
terraform destroy
```

---

## 📌 Requisitos

- Terraform >= 1.0
- Cuenta activa en AWS
- AWS CLI configurado
- Permisos para crear recursos (EC2, S3, VPC)

---

## 📷 Ejemplo

![arquitectura](diagrams/architecture.png)

---

## 📄 Licencia

MIT License

---

## ✍️ Autor

**Edward Oliva**  
[@YoukaiYoru](https://github.com/YoukaiYoru)
