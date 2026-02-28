# API Platform Skeleton Modified

This repository is a fork of the [official API Platform skeleton](https://github.com/api-platform/api-platform).

## Key Changes

* **PHP** - Upgraded to 8.5
* **Symfony** - Upgraded to Symfony 8
* **MariaDB LTS** - The project uses the stable **MariaDB 11.8.6**
* **phpMyAdmin** - Added phpMyAdmin for database management

## Installation

```bash
git clone https://github.com/din9xtr/api-platform.git
cd api-platform
docker compose build --no-cache
docker compose up -d
```

## Tests

The project uses a dedicated test database

```bash
make test
```

## Original README

[API_PLATFORM_README](API_PLATFORM_README.md)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
