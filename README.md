# SCP Upload

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg?logo=apache&logoColor=d22128&labelColor=262b31)](https://opensource.org/licenses/Apache-2.0)
[![Action type](https://img.shields.io/badge/Docker%20action-262b31?logo=docker&logoColor=2496ed)](https://docs.github.com/en/actions/creating-actions/about-actions#types-of-actions)

**Supported runners**

[![Supported runner](https://img.shields.io/badge/Linux-262b31?style=for-the-badge&logo=linux&logoColor=fcc624)](https://docs.github.com/en/actions/creating-actions/about-actions#docker-container-actions)

This action allows to upload files using SCP with key-based authentication.

# Usage
```yaml
- uses: betanzos/scp-upload@v1
  with:
    # Source local file path
    # REQUIRED
    source:

    # Remote host
    # REQUIRED
    host:

    # Remote host SSH port
    port: '22'

    # Remote host username
    # REQUIRED
    username:

    # SSH private key
    # REQUIRED  
    key:

    # Remote directory to copy the file. Default $HOME
    # REQUIRED  
    remote_dir: '~'

    # Recursively copy entire source directories. Valid values: true and false (specified as strings)
    recursive: 'false'
```

# License
The source code, scripts and documentation in this project are released under the [Apache-2.0 License](LICENSE)